import Chisel._

class SAM_Accelerator(maxBitWidth: Int) extends AcceleratorDevice(){
  val sam = Module(new SAM())

  // States
  val state_idle :: state_mem_load :: state_comp :: state_mem_write :: nil_state = Enum(4)
  // Status signals for Patmos
  val idle :: mem_loading :: mem_load_err :: computing :: mem_writing :: mem_wrt_err :: success :: nil_status = Enum(7)
  // Burst states
  val idleBurst :: readBurst :: readBurstResp :: writeBurst :: doneBurst :: nil_burst = Enum(5)
  // Load Reg
  val b_reg :: t_reg :: n_reg :: result_reg :: nil_reg = Enum(4)

  // Value address registers
  // Address offset given by lower 8 bits
  val n_start_addr = RegInit(0.U(32.W))       // 0b0000_0000
  val b_start_addr = RegInit(0.U(32.W))       // 0b0000_1000
  val t_start_addr = RegInit(0.U(32.W))       // 0b0001_0000
  val dest_addr = RegInit(0.U(32.W))          // 0b0001_1000

  // Computation values
  // SAM registers
  val numberOfSubRegs = (maxBitWidth + DATA_WIDTH-1)/DATA_WIDTH
  val max_burst_rounds = (numberOfSubRegs / (BURST_LENGTH)).U
  val bReg = Module(new bigShiftRegister(numberOfSubRegs, DATA_WIDTH))
  val tReg = Module(new bigShiftRegister(numberOfSubRegs, DATA_WIDTH))
  val nReg = Module(new bigShiftRegister(numberOfSubRegs, DATA_WIDTH))
  bReg.io.enable := 0.U
  tReg.io.enable := 0.U
  nReg.io.enable := 0.U

  sam.io.b := Cat(bReg.io.out)
  sam.io.t := Cat(tReg.io.out)
  sam.io.n := Cat(nReg.io.out)
  sam.io.valid_in := false.B
  val result = RegInit(0.U(2048.W))

  // Control signals
  val running = RegInit(false.B)
  val state_reg = RegInit(state_idle)
  val status_reg = RegInit(idle)
  val load_state = RegInit(b_reg)
  val stateBurst = RegInit(idleBurst)
  val burstCnt = Reg(init = UInt(0, log2Up(BURST_LENGTH)))
  val burst_round_reg = RegInit(0.U(8.W))
  val addr_offset = burst_round_reg << 4

  // Pseudo control flow:
  when(state_reg === state_idle){
    when(running){
      state_reg := state_mem_load
      status_reg := mem_loading
    }

  }.elsewhen(state_reg === state_mem_load){

    // START LOADING in order b, t, n
    when(stateBurst === idleBurst) {
      stateBurst := readBurst
      burst_round_reg := 0.U

    }.elsewhen(stateBurst === readBurst) {
      io.ocpBurst.M.Cmd := OcpCmd.RD

      when(load_state === b_reg){
        io.ocpBurst.M.Addr := b_start_addr + addr_offset

      }.elsewhen(load_state === t_reg){
        io.ocpBurst.M.Addr := t_start_addr + addr_offset

      }.elsewhen(load_state === n_reg){
        io.ocpBurst.M.Addr := n_start_addr + addr_offset

      }

        when(io.ocpBurst.S.CmdAccept === 1.U) {

          stateBurst := readBurstResp
        }

    }.elsewhen(stateBurst === readBurstResp) {

      io.ocpBurst.M.Cmd := OcpCmd.IDLE

      when(io.ocpBurst.S.Resp === OcpResp.DVA) {
        when(load_state === b_reg){
          bReg.io.shift_in := io.ocpBurst.S.Data
          bReg.io.enable := 1.U

        }.elsewhen(load_state === t_reg){
          tReg.io.shift_in := io.ocpBurst.S.Data
          tReg.io.enable := 1.U

        }.elsewhen(load_state === n_reg){
          nReg.io.shift_in := io.ocpBurst.S.Data
          nReg.io.enable := 1.U

        }

        burstCnt := burstCnt + 1.U

        when(burstCnt === (BURST_LENGTH-1).U) {
          burstCnt := 0.U
          stateBurst := doneBurst
        }
      }
    }.elsewhen(stateBurst === doneBurst){
      when(burst_round_reg < max_burst_rounds - 1.U){
        burst_round_reg := burst_round_reg + 1.U
        stateBurst := readBurst

      }.elsewhen(load_state === b_reg){
        burst_round_reg := 0.U
        stateBurst := readBurst
        load_state := t_reg

      }.elsewhen(load_state === t_reg){
        burst_round_reg := 0.U
        stateBurst := readBurst
        load_state := n_reg

      }.elsewhen(load_state === n_reg){
        stateBurst := idleBurst
        load_state := b_reg
        state_reg := state_comp
        // Placeholder loading
        state_reg := state_comp
        status_reg := computing
        sam.io.valid_in := true.B
      }
    }

      // TODO: Handle memory err
      //state_reg := state_idle
      //status_reg := mem_load_err


  }.elsewhen(state_reg === state_comp){
    when(sam.io.valid_out){
      result := sam.io.result
      state_reg := state_mem_write
      status_reg := mem_writing
    }
  }.otherwise{
    // Assume state_reg === state_mem_write
    // Write to memory
    val success2 = true.B
    sam.io.valid_in := false.B
    when(success2){
      state_reg := state_idle
      status_reg := success
      running := false.B
    }.otherwise{
      state_reg := state_idle
      status_reg := mem_wrt_err
      running := false.B
    }
  }

  // For OCP Comms with Patmos
  // ------------------------------------------------------------------
  val master_reg = Reg(next = io.ocp.M)
  val resp = Wire(Bits())
  val data = Wire(Bits(width = DATA_WIDTH))
  resp := OcpResp.NULL
  data := Bits(0)

  // Acknowledge reads and writes
  when(master_reg.Cmd === OcpCmd.RD || master_reg.Cmd === OcpCmd.WR) {
    resp := OcpResp.DVA
  }

  // On write, store data in result register
  // Acknowledge but ignore writes if not in state idle
  when (master_reg.Cmd === OcpCmd.WR && state_reg === idle) {
    when(master_reg.Addr(5, 2) === Bits("b0000")){
      n_start_addr := master_reg.Data

    }.elsewhen(master_reg.Addr(5, 2) === Bits("b0010")){
      b_start_addr := master_reg.Data

    }.elsewhen(master_reg.Addr(5, 2) === Bits("b0100")){
      t_start_addr := master_reg.Data

    }.elsewhen(master_reg.Addr(5, 2) === Bits("b0110")){
      dest_addr := master_reg.Data

    }.elsewhen(master_reg.Addr(5, 2) === Bits("b0111")){
      running := true.B

    }
  }

  when (master_reg.Cmd === OcpCmd.RD) {
    when(master_reg.Addr(8, 2) === Bits("b00000")) {
      data := n_start_addr

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b00010")) {
      data := b_start_addr

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b00100")) {
      data := t_start_addr

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b00110")) {
      data := dest_addr

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b00111")) {
      data := running

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b01000")) {
      data := status_reg

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b01010")) {
      data := stateBurst

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b01011")) {
      data := burstCnt

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b01100")) {
      data := bReg.io.out(62)

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b01101")) {
      data := tReg.io.out(62)

    }.elsewhen(master_reg.Addr(8, 2) === Bits("b01110")) {
      data := nReg.io.out(62)

    }.elsewhen(master_reg.Addr(8, 0) === 60.U) { // 0
      data := result(31, 0)
    }.elsewhen(master_reg.Addr(8, 0) === 64.U) {
      data := result(63, 32)
    }.elsewhen(master_reg.Addr(8, 0) === 68.U) {
      data := result(95, 64)
    }.elsewhen(master_reg.Addr(8, 0) === 72.U) {
      data := result(127, 96)
    }.elsewhen(master_reg.Addr(8, 0) === 76.U) {
      data := result(159, 128)
    }.elsewhen(master_reg.Addr(8, 0) === 80.U) {
      data := result(191, 160)
    }.elsewhen(master_reg.Addr(8, 0) === 84.U) {
      data := result(223, 192)
    }.elsewhen(master_reg.Addr(8, 0) === 88.U) {
      data := result(255, 224)
    }.elsewhen(master_reg.Addr(8, 0) === 92.U) {
      data := result(287, 256)
    }.elsewhen(master_reg.Addr(8, 0) === 96.U) {
      data := result(319, 288)
    }.elsewhen(master_reg.Addr(8, 0) === 100.U) { // 10
      data := result(351, 320)
    }.elsewhen(master_reg.Addr(8, 0) === 104.U) {
      data := result(383, 352)
    }.elsewhen(master_reg.Addr(8, 0) === 108.U) {
      data := result(415, 384)
    }.elsewhen(master_reg.Addr(8, 0) === 112.U) {
      data := result(447, 416)
    }.elsewhen(master_reg.Addr(8, 0) === 116.U) {
      data := result(479, 448)
    }.elsewhen(master_reg.Addr(8, 0) === 120.U) {
      data := result(511, 480)
    }.elsewhen(master_reg.Addr(8, 0) === 124.U) {
      data := result(543, 512)
    }.elsewhen(master_reg.Addr(8, 0) === 128.U) {
      data := result(575, 544)
    }.elsewhen(master_reg.Addr(8, 0) === 132.U) {
      data := result(607, 576)
    }.elsewhen(master_reg.Addr(8, 0) === 136.U) {
      data := result(639, 608)
    }.elsewhen(master_reg.Addr(8, 0) === 140.U) { // 20
      data := result(671, 640)
    }.elsewhen(master_reg.Addr(8, 0) === 144.U) {
      data := result(703, 672)
    }.elsewhen(master_reg.Addr(8, 0) === 148.U) {
      data := result(735, 704)
    }.elsewhen(master_reg.Addr(8, 0) === 152.U) {
      data := result(767, 736)
    }.elsewhen(master_reg.Addr(8, 0) === 156.U) {
      data := result(799, 768)
    }.elsewhen(master_reg.Addr(8, 0) === 160.U) {
      data := result(831, 800)
    }.elsewhen(master_reg.Addr(8, 0) === 164.U) {
      data := result(863, 832)
    }.elsewhen(master_reg.Addr(8, 0) === 168.U) {
      data := result(895, 864)
    }.elsewhen(master_reg.Addr(8, 0) === 172.U) {
      data := result(927, 896)
    }.elsewhen(master_reg.Addr(8, 0) === 176.U) {
      data := result(959, 928)
    }.elsewhen(master_reg.Addr(8, 0) === 180.U) { // 30
      data := result(991, 960)
    }.elsewhen(master_reg.Addr(8, 0) === 184.U) {
      data := result(1023, 992)
    }.elsewhen(master_reg.Addr(8, 0) === 188.U) {
      data := result(1055, 1024)
    }.elsewhen(master_reg.Addr(8, 0) === 192.U) {
      data := result(1087, 1056)
    }.elsewhen(master_reg.Addr(8, 0) === 196.U) {
      data := result(1119, 1088)
    }.elsewhen(master_reg.Addr(8, 0) === 200.U) {
      data := result(1151, 1120)
    }.elsewhen(master_reg.Addr(8, 0) === 204.U) {
      data := result(1183, 1152)
    }.elsewhen(master_reg.Addr(8, 0) === 208.U) {
      data := result(1215, 1184)
    }.elsewhen(master_reg.Addr(8, 0) === 212.U) {
      data := result(1247, 1216)
    }.elsewhen(master_reg.Addr(8, 0) === 216.U) {
      data := result(1279, 1248)
    }.elsewhen(master_reg.Addr(8, 0) === 220.U) {
      data := result(1311, 1280)
    }.elsewhen(master_reg.Addr(8, 0) === 224.U) {
      data := result(1343, 1312)
    }.elsewhen(master_reg.Addr(8, 0) === 228.U) { // 40
      data := result(1375, 1344)
    }.elsewhen(master_reg.Addr(8, 0) === 232.U) {
      data := result(1407, 1376)
    }.elsewhen(master_reg.Addr(8, 0) === 236.U) {
      data := result(1439, 1408)
    }.elsewhen(master_reg.Addr(8, 0) === 240.U) {
      data := result(1471, 1440)
    }.elsewhen(master_reg.Addr(8, 0) === 244.U) {
      data := result(1503, 1472)
    }.elsewhen(master_reg.Addr(8, 0) === 248.U) {
      data := result(1535, 1504)
    }.elsewhen(master_reg.Addr(8, 0) === 252.U) {
      data := result(1567, 1536)
    }.elsewhen(master_reg.Addr(8, 0) === 256.U) {
      data := result(1599, 1568)
    }.elsewhen(master_reg.Addr(8, 0) === 260.U) {
      data := result(1631, 1600)
    }.elsewhen(master_reg.Addr(8, 0) === 264.U) {
      data := result(1663, 1632)
    }.elsewhen(master_reg.Addr(8, 0) === 268.U) { // 50
      data := result(1695, 1664)
    }.elsewhen(master_reg.Addr(8, 0) === 272.U) {
      data := result(1727, 1696)
    }.elsewhen(master_reg.Addr(8, 0) === 276.U) {
      data := result(1759, 1728)
    }.elsewhen(master_reg.Addr(8, 0) === 280.U) {
      data := result(1791, 1760)
    }.elsewhen(master_reg.Addr(8, 0) === 284.U) {
      data := result(1823, 1792)
    }.elsewhen(master_reg.Addr(8, 0) === 288.U) {
      data := result(1855, 1824)
    }.elsewhen(master_reg.Addr(8, 0) === 292.U) {
      data := result(1887, 1856)
    }.elsewhen(master_reg.Addr(8, 0) === 296.U) {
      data := result(1919, 1888)
    }.elsewhen(master_reg.Addr(8, 0) === 300.U) { // 58
      data := result(1951, 1920)
    }.elsewhen(master_reg.Addr(8, 0) === 304.U) { // 58
      data := result(1983, 1952)
    }.elsewhen(master_reg.Addr(8, 0) === 308.U) { // 58
      data := result(2015, 1984)
    }.elsewhen(master_reg.Addr(8, 0) === 312.U) { // 58
      data := result(2047, 2016)
    }
  }

  // Connections to master
  io.ocp.S.Data := data
  io.ocp.S.Resp := resp
  // -------------------------------------------------------------------------------------
}

class shiftRegister extends Module {
  val io = IO( new Bundle {
    val shift_in = Input(UInt(width = DATA_WIDTH))
    val enable = Input(UInt(1.W))
    val out = Output(UInt(width = DATA_WIDTH))
  })

  val reg = RegInit(0.U(32.W))

  reg := reg
  when(io.enable === 1.U) {

    reg := io.shift_in
  }

  io.out := reg
}

class bigShiftRegister(cnt: Int, dataWidth: Int) extends Module {

  val io = IO( new Bundle {
    val shift_in = Input(UInt(width = dataWidth))
    val enable = Input(UInt(1.W))
    val out = Output(Vec(cnt, UInt(width = dataWidth)))
  })

  val regs = Seq.fill(cnt)(Module(new shiftRegister))

  for(i <- 0 to cnt-1) {

    if(i == 0) {

      regs(i).io.shift_in := io.shift_in
      regs(i).io.enable := io.enable
      io.out(i) := regs(i).io.out
    }

    else {

      regs(i).io.shift_in := regs(i-1).io.out
      regs(i).io.enable := io.enable
      io.out(i) := regs(i).io.out
    }
  }

}