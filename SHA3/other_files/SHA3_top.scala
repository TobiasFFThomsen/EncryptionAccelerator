//package accelerator
package io

import Chisel._
import patmos.Constants._
import ocp._
import chisel3.dontTouch

object SHA3_top extends DeviceObject {

  def init(params: Map[String, String]) = {}

  def create(params: Map[String, String]): SHA3_top = Module(new SHA3_top())
}

class SHA3_top() extends CoreDevice() {

  // For OCP Comms with Patmos
  // ------------------------------------------------------------------
  val master_reg = Reg(next = io.ocp.M)
  val resp = Wire(Bits())
  val data = Wire(Bits(width = DATA_WIDTH))
  resp := OcpResp.NULL
  data := Bits(0)
  
  //Modules
  val sha3              = Module(new Sha3())
  val buffer_counter    = RegInit(0.U(8.W))
  val message_length    = RegInit(0.U(32.W))
  val result_rec_reg    = RegInit(false.B)

  // Acknowledge reads and writes
  when(master_reg.Cmd === OcpCmd.RD || master_reg.Cmd === OcpCmd.WR) {
    resp := OcpResp.DVA
  }

  when(buffer_counter === 18.U){
    sha3.io.buffer_ready  := true.B
    buffer_counter        := 0.U
  }.otherwise{
    sha3.io.buffer_ready  := false.B
  }
  


  sha3.io.enable_buffer := false.B

  // A WRITE command has been issued by the application running on top of Patmos
  when(master_reg.Cmd === OcpCmd.WR) { // && state_reg === idle) {
    when(master_reg.Addr(15, 0) === Bits("b0000000000000000")){//  && sha3.io.buffer_ready === false.B) {
      sha3.io.data_in   := master_reg.Data
      buffer_counter    := buffer_counter + 1.U 
      sha3.io.enable_buffer := true.B
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000001010000")){// && sha3.io.buffer_ready === false.B){
      message_length := master_reg.Data
    }
  }

  // A READ command has been issued by the application running on top of Patmos
  when(master_reg.Cmd === OcpCmd.RD) {
    when(master_reg.Addr(15, 0) === Bits("b0000000000000000")) {        
      data := sha3.io.status_reg
      //data := sha3.io.next_state
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000000100")){  
      data := sha3.io.result_32(0)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000001000")){   
      data := sha3.io.result_32(1)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000001100")){   
      data := sha3.io.result_32(2)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000010000")){   
      data := sha3.io.result_32(3)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000010100")){   
      data := sha3.io.result_32(4)  
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000011000")){   
      data := sha3.io.result_32(5)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000011100")){   
      data := sha3.io.result_32(6)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000100000")){   
      data := sha3.io.result_32(7)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000100100")){   
      data := sha3.io.result_32(8)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000101000")){   
      data := sha3.io.result_32(9)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000101100")){   
      data := sha3.io.result_32(10)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000110000")){   
      data := sha3.io.result_32(11)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000110100")){   
      data := sha3.io.result_32(12)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000111000")){   
      data := sha3.io.result_32(13)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000000111100")){   
      data := sha3.io.result_32(14)
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000001000000")){   
      data := sha3.io.result_32(15)
      buffer_counter := 0.U
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000001000100")){   
      data := sha3.io.iota_round
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000001001100")){
      data := buffer_counter
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000001010000")){
      data := message_length
    }.elsewhen(master_reg.Addr(15, 0) === Bits("b0000000001010100")){
       //data := sha3.io.status_reg
       data := sha3.io.next_state
    }
      

    sha3.io.m_len            := message_length
    result_rec_reg           := false.B

    //sha3.io.result_received     := false.B

    sha3.io.result_received   := result_rec_reg

    // Connections to master
    io.ocp.S.Data := data
    io.ocp.S.Resp := resp
    
  } 
}
