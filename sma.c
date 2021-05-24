#include <stdio.h>
#include <limits.h>
#include <machine/patmos.h>

#define BIT_WIDTH (unsigned int)128
#define BITS_PER_ELEMENT (unsigned int)32
#define MAX_ELEMENTS (unsigned int)((BIT_WIDTH)/BITS_PER_ELEMENT)

#define IDLE 0
#define MEM_LOADING 1
#define MEM_LOAD_ERR 2
#define COMPUTING 3
#define MEM_WRITING 4
#define MEM_WRITE_ERR 5
#define SUCCESS 6

#define N_START_ADDR (PATMOS_IO_SAM)
#define B_START_ADDR (PATMOS_IO_SAM + 8)
#define T_START_ADDR (PATMOS_IO_SAM + 16)
#define DEST_ADDR (PATMOS_IO_SAM + 24)
#define SMA_WRITE_RUN_WITH_LOAD (PATMOS_IO_SAM + 28)
#define SMA_WRITE_RUN_WITHOUT_LOAD (PATMOS_IO_SAM + 32)
#define SMA_READ_RUNNING_STATE (PATMOS_IO_SAM + 28)
#define SMA_READ_STATUS (PATMOS_IO_SAM + 32)
#define SMA_TEST (PATMOS_IO_SAM + 36)
#define SMA_BURST_STATE (PATMOS_IO_SAM + 40)
#define SMA_BURST_CNT (PATMOS_IO_SAM + 44)
#define SMA_B_REG (PATMOS_IO_SAM + 48)
#define SMA_T_REG (PATMOS_IO_SAM + 52)
#define SMA_N_REG (PATMOS_IO_SAM + 56)
#define SMA_RESULT (PATMOS_IO_SAM + 60)
#define SMA_RW_CNT  64
#define SMA_STATE PATMOS_IO_SAM

static volatile _IODEV unsigned int *io_clock_cycles_low 	= (volatile _IODEV unsigned int *)PATMOS_IO_TIMER+1;
static volatile _IODEV unsigned int *io_clock_cycles_high 	= (volatile _IODEV unsigned int *)PATMOS_IO_TIMER;
static volatile _IODEV unsigned int *io_clock_time_low    	= (volatile _IODEV unsigned int *)PATMOS_IO_TIMER+3;
static volatile _IODEV unsigned int *io_clock_time_high   	= (volatile _IODEV unsigned int *)PATMOS_IO_TIMER+2;

static volatile _IODEV int *sma_n_start_addr   = (volatile _IODEV int *)N_START_ADDR;
static volatile _IODEV int *sma_b_start_addr   = (volatile _IODEV int *)B_START_ADDR;
static volatile _IODEV int *sma_t_start_addr   = (volatile _IODEV int *)T_START_ADDR;
static volatile _IODEV int *sma_dest_addr   = (volatile _IODEV int *)DEST_ADDR;
static volatile _IODEV int *sma_write_run_with_load   = (volatile _IODEV int *)SMA_WRITE_RUN_WITH_LOAD;
static volatile _IODEV int *sma_write_run_without_load    = (volatile _IODEV int *)SMA_WRITE_RUN_WITHOUT_LOAD;
static volatile _IODEV int *sma_read_running_state   = (volatile _IODEV int *)SMA_READ_RUNNING_STATE;
static volatile _IODEV int *sma_status   = (volatile _IODEV int *)SMA_READ_STATUS;
static volatile _IODEV int *sma_result   = (volatile _IODEV int *)SMA_RESULT;
static volatile _IODEV int *sma_burst_state   = (volatile _IODEV int *)SMA_BURST_STATE;
static volatile _IODEV int *sma_burst_cnt   = (volatile _IODEV int *)SMA_BURST_CNT;
static volatile _IODEV int *sma_b_reg   = (volatile _IODEV int *)SMA_B_REG;
static volatile _IODEV int *sma_t_reg   = (volatile _IODEV int *)SMA_T_REG;
static volatile _IODEV int *sma_n_reg   = (volatile _IODEV int *)SMA_N_REG;
static volatile _IODEV int *sma_state  = (volatile _IODEV int *)SMA_STATE;

void get_current_clock_cycles(unsigned int *);
void get_current_clock_time(unsigned int *);
void write_b_reg(unsigned int *, unsigned int);
void write_t_reg(unsigned int *, unsigned int);
void write_n_reg(unsigned int *, unsigned int);
void write_b_addr_reg(unsigned int);
void write_t_addr_reg(unsigned int);
void write_n_addr_reg(unsigned int);
void run_sma_software(unsigned int*, unsigned int*, unsigned int*, unsigned int *);
void run_sma_hardware_without_load(unsigned int *, unsigned int *, unsigned int *, unsigned int *);
void run_sma_hardware_with_load(unsigned int, unsigned int, unsigned int, unsigned int *);
void init(unsigned int *, unsigned int *, unsigned int *, unsigned int *, unsigned int);
void print_number(unsigned int *, unsigned int);
void read_b_reg(unsigned int *a, unsigned int size);
void read_t_reg(unsigned int *a, unsigned int size);
void read_n_reg(unsigned int *a, unsigned int size);
void clear_number(unsigned int *);


#define SOFTWARE_TEST 			0
#define HARDWARE_TEST 			1
#define HARDWARE_TEST_WITH_LOAD	2

int main() {

	// Choose your test
	// Write e.g. chosen_test = SOFTWARE_TEST
	//unsigned int chosen_test = SOFTWARE_TEST;
	//unsigned int chosen_test = HARDWARE_TEST;
	unsigned int chosen_test = HARDWARE_TEST_WITH_LOAD;

	unsigned int b[MAX_ELEMENTS];
	unsigned int t[MAX_ELEMENTS];
	unsigned int n[MAX_ELEMENTS];
	unsigned int w[MAX_ELEMENTS];
	unsigned int first_clk_cycles[2], second_clk_cycles[2];
	
	init(b,t,n,w,2);
	
	switch(chosen_test) {
	
		
		case SOFTWARE_TEST: get_current_clock_cycles(first_clk_cycles);
							run_sma_software(b,t,n,w);
							get_current_clock_cycles(second_clk_cycles);
							printf("SMA WITHOUT accelerator: %u clock cycles\n", second_clk_cycles[0] - first_clk_cycles[0]);
							break;
							
		case HARDWARE_TEST: get_current_clock_cycles(first_clk_cycles);
							run_sma_hardware_without_load(b,t,n,w);
							get_current_clock_cycles(second_clk_cycles);
							printf("SMA WITH accelerator WITH OCP Core: %u clock cycles\n", second_clk_cycles[0] - first_clk_cycles[0]);
							break;
							
		case HARDWARE_TEST_WITH_LOAD: 
							get_current_clock_cycles(first_clk_cycles);
							run_sma_hardware_with_load((unsigned int)b,(unsigned int)t,(unsigned int)n,w);
							get_current_clock_cycles(second_clk_cycles);
							printf("SMA WITH accelerator WITH OCP Burst: %u clock cycles\n", second_clk_cycles[0] - first_clk_cycles[0]);
							break;
	}
}


void init(unsigned int *b, unsigned int *t, unsigned int *n, unsigned int *w, unsigned int test) {
	
	clear_number(w);
	clear_number(b);
	clear_number(t);
	clear_number(n);
	w[0] = 1;
	
	switch(test) {
		
		case 0: // b = 23402, 
				// t = 410531, 
				// n = 778231
				b[0] = 23402;
				t[0] = 410531;
				n[0] = 778231;
				break;
		
		case 1: // b = 100, 
				// t = 11, 
				// n = 778231
				b[0] = 100;
				t[0] = 11;
				n[0] = 778231;
				break;
		
		case 2: // b = 4294967296, 
				// t = 5294967296, 
				// n = 778231
				b[1] = 1;
				t[0] = 0x3B9ACA00;
				t[1] = 1;
				n[0] = 778231;
				break;
		
		case 3: // b = 4294967296, 
				// t = 30064771072, 
				// n = 778231
				b[1] = 1;
				t[1] = 7;
				n[0] = 778231;
				break;
		
		case 4: // b = 8803120365140871558429975712366592, 
				// t = 352125131519391705592227760323953874,
				// n = 778231
				b[1] = 1;
				b[2] = 1000;
				b[3] = 111111;
				t[0] = 1234;
				t[1] = 7;
				t[2] = 99999;
				t[3] = 4444444;
				n[0] = 778231;
				break;
		
		default:
				break;
	}
}

void run_without_load(void) {
	
	*sma_write_run_without_load = 1;
}

void run_with_load(void) {
	
	*sma_write_run_with_load = 1;
}

void run_sma_hardware_without_load(unsigned int *b, unsigned int *t, unsigned int *n, unsigned int *w) {
	
	write_b_reg(b, MAX_ELEMENTS);
	write_t_reg(t, MAX_ELEMENTS);
	write_n_reg(n, MAX_ELEMENTS);
	
	run_without_load();
	
	while((*sma_status != SUCCESS) && !((*sma_status == MEM_LOAD_ERR) || (*sma_status == MEM_WRITE_ERR)));
	
	for(int i = 0; i < SMA_RW_CNT; i++) {
		
		if(i < MAX_ELEMENTS) {
		
			w[i] = *(sma_result + i*4);
		}
		
		else {
			
			return;
		}
	}
}

void run_sma_hardware_with_load(unsigned int b_addr, unsigned int t_addr, unsigned int n_addr, unsigned int *w) {
	
	write_b_addr_reg(b_addr);
	write_t_addr_reg(t_addr);
	write_n_addr_reg(n_addr);
	
	run_with_load();
	
	while((*sma_status != SUCCESS) && !((*sma_status == MEM_LOAD_ERR) || (*sma_status == MEM_WRITE_ERR)));
	
	for(int i = 0; i < SMA_RW_CNT; i++) {
		
		if(i < MAX_ELEMENTS) {
		
			w[i] = *(sma_result + i*4);
		}
		
		else {
			
			return;
		}
	}
}

void get_current_clock_cycles(unsigned int *a) {
	
	a[0] = *io_clock_cycles_low;
	a[1] = *io_clock_cycles_high;
}

void get_current_clock_time(unsigned int *a) {
	
	a[0] = *io_clock_cycles_low;
	a[1] = *io_clock_cycles_high;
}

void read_b_reg(unsigned int *a, unsigned int size) {
	
	
	for(int i = 0; i < size; i++) {
		
		if(i < size) {
		
			a[i] = *(sma_b_reg + i*4);	
		}
	}
}

void read_t_reg(unsigned int *a, unsigned int size) {
	
	
	for(int i = 0; i < size; i++) {
		
		if(i < size) {
		
			a[i] = *(sma_t_reg + i*4);	
		}
	}
}

void read_n_reg(unsigned int *a, unsigned int size) {
	
	
	for(int i = 0; i < size; i++) {
		
		if(i < size) {
		
			a[i] = *(sma_n_reg + i*4);	
		}
	}
}


void write_b_addr_reg(unsigned int addr) {
	
	*sma_b_start_addr = addr;
}


void write_t_addr_reg(unsigned int addr) {
	
	*sma_t_start_addr = addr;
}


void write_n_addr_reg(unsigned int addr) {
	
	*sma_n_start_addr = addr;
}


void write_b_reg(unsigned int *a, unsigned int size) {
	
	
	for(int i = 0; i < SMA_RW_CNT; i++) {
		
		if(i < size) {
		
			*sma_b_reg = a[i];	
		}
		
		else {
			
			*sma_b_reg = 0;
		}
	}
}


void write_t_reg(unsigned int *a, unsigned int size) {
	
	
	for(int i = 0; i < SMA_RW_CNT; i++) {
		
		if(i < size) {
		
			*sma_t_reg = a[i];	
		}
		
		else {
			
			*sma_t_reg = 0;
		}
	}
}

void write_n_reg(unsigned int *a, unsigned int size) {
	
	
	for(int i = 0; i < SMA_RW_CNT; i++) {
		
		if(i < size) {
		
			*sma_n_reg = a[i];	
		}
		
		else {
			
			*sma_n_reg = 0;
		}
	}
}


void multiply(unsigned int *, unsigned int *, unsigned int *);
void add(unsigned int *, unsigned int *, unsigned int *);
void shift_left(unsigned int *, unsigned int,  unsigned int *);
void shift_right(unsigned int *, unsigned int,  unsigned int *);
void print_number(unsigned int *, unsigned int);
void subtract(unsigned int *, unsigned int *, unsigned int *);
unsigned int comp(unsigned int *a, unsigned int *b);
void modulus(unsigned int *, unsigned int *, unsigned int *);
unsigned int find_msb(unsigned int *);
void copy(unsigned int *, unsigned int *);
void printBits(unsigned int);
unsigned int get_msb(unsigned int *);
unsigned int get_bit(unsigned int *, unsigned int);


// w = b^t mod n
void run_sma_software(unsigned int *b, unsigned int *t, unsigned int *n, unsigned int *w) {
	
	unsigned int wTmp[MAX_ELEMENTS], tTmp[MAX_ELEMENTS];
	
	clear_number(wTmp);
	clear_number(tTmp);
	
	for(int i = get_msb(t); i >= 0; i--) {

		multiply(w, w, wTmp);
		
		modulus(wTmp, n, w);
			
		shift_right(t, i, tTmp);
		
		if(tTmp[0] & 1) {
		
			multiply(w, b, wTmp);
			
			modulus(wTmp, n, w);
		}
	}
}


void modulus(unsigned int *a, unsigned int *b, unsigned int *res) {

	if(comp(a, b) == 2) {
		
		copy(a, res);
		
		return;
	}
	
	else if(comp(a, b) == 0) {
		
		clear_number(res);
		
		return;
	}
	
	unsigned int tmpRes[MAX_ELEMENTS], tmp[MAX_ELEMENTS];
	unsigned int shiftLeft;
	
	clear_number(tmpRes);
	clear_number(tmp);
	
	shiftLeft = get_msb(a) - get_msb(b);
	
	if(shiftLeft > 1) {
		
		shift_left(b, shiftLeft-1, tmp);
		subtract(a, tmp, tmpRes);
		
		while(comp(tmpRes, b) != 2) {
			
			if(get_msb(tmpRes) <= get_msb(tmp)) {
				
				if(shiftLeft > 0) {
				
					shiftLeft--;
					shift_right(tmp, 1, tmp);
				}
			}
			
			subtract(tmpRes, tmp, tmpRes);
		}
		
		copy(tmpRes, res);
	}
	
	else {
		
		subtract(a, b, tmpRes);
		
		while(comp(tmpRes, b) != 2) {
			
			subtract(tmpRes, b, tmpRes);
		}
		
		copy(tmpRes, res);
	}
}

void multiply(unsigned int *a, unsigned int *b, unsigned int *res) {
	
	unsigned int sub_number, bit;
	
	unsigned int tmp[MAX_ELEMENTS], tmpRes[MAX_ELEMENTS];
	
	clear_number(tmp);
	clear_number(tmpRes);
	
	for(sub_number = 0; sub_number < MAX_ELEMENTS; sub_number++) {
		
		for(bit = 0; bit < BITS_PER_ELEMENT; bit++) {
			
			if(a[sub_number] & (1 << bit)) {
				
				shift_left(b, sub_number*32+bit, tmp);
				add(tmpRes, tmp, tmpRes);
			}
		}
	}
	
	copy(tmpRes, res);
}

void add(unsigned int *a, unsigned int *b, unsigned int *res) {
	
	unsigned int carry = 0;
	
	unsigned int tmpRes[MAX_ELEMENTS];
	
	clear_number(tmpRes);
	
	for(int i = 0; i < MAX_ELEMENTS; i++) {
		
		tmpRes[i] = a[i] + b[i] + carry;
		
		if((a[i] > 0) && ((b[i] + carry) > (UINT_MAX - (a[i])))) {
		
			carry = 1;
		}
		
		else {
		
			carry = 0;
		}
	}
	
	copy(tmpRes, res);
}

unsigned int comp(unsigned int *a, unsigned int *b) {
	
	int sub_number, bit;
	
	for(sub_number = MAX_ELEMENTS-1; sub_number >= 0; sub_number--) {
		
		for(bit = BITS_PER_ELEMENT-1; bit >= 0; bit--) {
			
			if((a[sub_number] & (1 << bit)) && !(b[sub_number] & (1 << bit))) {
				
				return 1;
			}
			
			else if((b[sub_number] & (1 << bit)) && !(a[sub_number] & (1 << bit))) {
				
				return 2;
			}
		}
	}
	
	return 0;
}


void subtract(unsigned int *a, unsigned int *b, unsigned int *res) {
	
	if(comp(a, b) == 2) {
		
		return;
	}
	
	unsigned int tmp1[MAX_ELEMENTS], tmp2[MAX_ELEMENTS];
	
	clear_number(tmp1);
	clear_number(tmp2);
	
	tmp2[0] = 1;
	
	for(int i = 0; i < MAX_ELEMENTS; i++) {
		
		tmp1[i] = ~b[i];
	}
	
	add(tmp1, tmp2, tmp1);
	
	add(tmp1, a, res);
}

void shift_left(unsigned int *a, unsigned int shift_val, unsigned int *res) {
	
	if(shift_val >= BITS_PER_ELEMENT) {
		
		unsigned int big_shifts = shift_val/BITS_PER_ELEMENT;
		
		for(int i = MAX_ELEMENTS; i >= 0; i--) {
			
			if(i >= big_shifts) {
			
				res[i] = a[i - big_shifts];
			}
			
			else {
				
				res[i] = 0;
			}
		}
		
		shift_val = shift_val%BITS_PER_ELEMENT;
		
		if(shift_val < 1) {
			
			return;
		}
		
		unsigned int prev_carry = 0, future_carry = 0;
	
		for(int i = 0; i < MAX_ELEMENTS; i++) {
			
			future_carry = res[i] >> (BITS_PER_ELEMENT-shift_val);
			
			res[i] = res[i] << shift_val;
			
			if(prev_carry) {
				
				res[i] ^= prev_carry;
			}
			
			prev_carry = future_carry;
		}
	}
	
	else {
		
		if(shift_val < 1) {
			
			copy(a, res);
			
			return;
		}
		
		unsigned int prev_carry = 0, future_carry = 0;
	
		for(int i = 0; i < MAX_ELEMENTS; i++) {
			
			future_carry = a[i] >> (BITS_PER_ELEMENT-shift_val);
			
			res[i] = a[i] << shift_val;
			
			if(prev_carry) {
				
				res[i] ^= prev_carry;
			}
			
			prev_carry = future_carry;
		}
	}
}

void shift_right(unsigned int *a, unsigned int shift_val, unsigned int *res) {
	
	if(shift_val >= BITS_PER_ELEMENT) {
		
		unsigned int big_shifts = shift_val/BITS_PER_ELEMENT;
		
		for(int i = 0; i < MAX_ELEMENTS; i++) {
			
			if(i < MAX_ELEMENTS - big_shifts) {
			
				res[i] = a[i + big_shifts];
			}
			
			else {
				
				res[i] = 0;
			}
		}
		
		shift_val = shift_val%BITS_PER_ELEMENT;
		
		if(shift_val < 1) {
			
			return;
		}
		
		unsigned int prev_carry = 0, future_carry = 0;
	
		for(int i = MAX_ELEMENTS-1; i >= 0; i--) {
			
			future_carry = res[i] << (BITS_PER_ELEMENT-shift_val);
			
			res[i] = res[i] >> shift_val;
			
			if(prev_carry) {
				
				res[i] ^= prev_carry;
			}
			
			prev_carry = future_carry;
		}
	}
	
	else {
		
		if(shift_val < 1) {
		
			copy(a, res);
			
			return;
		}
		
		unsigned int prev_carry = 0, future_carry = 0;
	
		for(int i = MAX_ELEMENTS-1; i >= 0; i--) {
			
			future_carry = a[i] << (BITS_PER_ELEMENT-shift_val);
			
			res[i] = a[i] >> shift_val;
			
			if(prev_carry) {
				
				res[i] ^= prev_carry;
			}
			
			prev_carry = future_carry;
		}
	}
}

void copy(unsigned int *a, unsigned int *b) {
	
	for(int i = 0; i < MAX_ELEMENTS; i++) {
		
		b[i] = a[i];
	}
}

void clear_number(unsigned int *a) {
	
	for(int i = 0; i < MAX_ELEMENTS; i++) {
		
		a[i] = 0;
	}
}

unsigned int get_msb(unsigned int *a) {
	
	int sub_number, bit;
	
	for(sub_number = MAX_ELEMENTS-1; sub_number >= 0; sub_number--) {
		
		for(bit = BITS_PER_ELEMENT-1; bit >= 0; bit--) {
			
			if(a[sub_number] & (1 << bit)) {
				
				return sub_number*BITS_PER_ELEMENT + bit;
			}
		}
	}
	
	return 0;
}

unsigned int get_msw(unsigned int *a) {
	
	int sub_number, bit;
	
	for(sub_number = 0; sub_number < MAX_ELEMENTS; sub_number++) {
		
		for(bit = BITS_PER_ELEMENT-1; bit >= 0; bit--) {
			
			if(a[sub_number] & (1 << bit)) {
				
				return sub_number;
			}
		}
	}
	
	return 0;
}

unsigned int get_bit(unsigned int *a, unsigned int bit) {

	if(bit >= BIT_WIDTH) {
		
		//printf("Bit out of range\n");
		
		return 0;
	}
	
	if(a[(bit)/BITS_PER_ELEMENT] & (1 << (bit%BITS_PER_ELEMENT))) {
		
		return 1;
	}
	
	else {
		
		return 0;
	}
}

void printBits(unsigned int a) {

	for(int j = BITS_PER_ELEMENT-1; j >= 0; j--) {
			
		if(a & (1 << j)) {
			
			putchar('1');
		}
		
		else {
			
			putchar('0');
		}
	}
}

void print_number(unsigned int *a, unsigned int type) {
	
	//printf("----------------------- Printing number -----------------------\n");
	
	for(int i = MAX_ELEMENTS-1; i >= 0; i--) {
		
		printf("[%d]: ", i);
		
		if(type) {
		
			printBits(a[i]);
		}
		
		else {
			
			printf("%u", a[i]);
		}
		
		printf("\n");
	} 
}

