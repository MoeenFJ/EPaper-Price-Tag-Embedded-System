#include <stdint.h>
#include <stdio.h>

# define PORT_CFG_CTL	((volatile uint8_t*)0x00004F00)
# define PORT_CFG_STS	((volatile uint8_t*)0x00004F01)
# define PORT_CFG_M_MAX	((volatile uint8_t*)0x00004F02)
# define PORT_CFG_K_MAX	((volatile uint8_t*)0x00004F03)
# define PORT_CFG_N_MAX	((volatile uint8_t*)0x00004F04)

# define PORT_DATA_IA0	((volatile uint8_t*)0x00004000)
# define PORT_DATA_IA1	((volatile uint8_t*)0x00004040)
# define PORT_DATA_IA2	((volatile uint8_t*)0x00004080)
# define PORT_DATA_IA3	((volatile uint8_t*)0x000040C0)

# define PORT_DATA_W00	((volatile uint8_t*)0x00004100)
# define PORT_DATA_W01	((volatile uint8_t*)0x00004110)
# define PORT_DATA_W02	((volatile uint8_t*)0x00004120)
# define PORT_DATA_W03	((volatile uint8_t*)0x00004130)
# define PORT_DATA_W10	((volatile uint8_t*)0x00004140)
# define PORT_DATA_W11	((volatile uint8_t*)0x00004150)
# define PORT_DATA_W12	((volatile uint8_t*)0x00004160)
# define PORT_DATA_W13	((volatile uint8_t*)0x00004170)
# define PORT_DATA_W20	((volatile uint8_t*)0x00004180)
# define PORT_DATA_W21	((volatile uint8_t*)0x00004190)
# define PORT_DATA_W22	((volatile uint8_t*)0x000041A0)
# define PORT_DATA_W23	((volatile uint8_t*)0x000041B0)
# define PORT_DATA_W30	((volatile uint8_t*)0x000041C0)
# define PORT_DATA_W31	((volatile uint8_t*)0x000041D0)
# define PORT_DATA_W32	((volatile uint8_t*)0x000041E0)
# define PORT_DATA_W33	((volatile uint8_t*)0x000041F0)

# define PORT_DATA_OA0	((volatile uint32_t*)0x00004200)
# define PORT_DATA_OA1	((volatile uint32_t*)0x00004240)
# define PORT_DATA_OA2	((volatile uint32_t*)0x00004280)
# define PORT_DATA_OA3	((volatile uint32_t*)0x000042C0)

# define MEM_DATA_IA    ((volatile uint8_t*)0x00002000)
# define MEM_DATA_W     ((volatile uint8_t*)0x00002100)
# define MEM_DATA_OA_G  ((volatile uint32_t*)0x00002200)
# define MEM_DATA_OA    ((volatile uint32_t*)0x00002300)

int main() {

	uint8_t M_MAX = 2;
	uint8_t K_MAX = 8;
	uint8_t N_MAX = 8;

	uint8_t value = 0;
	// IA initialization on Memory
	for (uint8_t i = 0; i < M_MAX; i++) {
		for (uint8_t j = 0; j < K_MAX; j++) {
			MEM_DATA_IA[i * K_MAX + j] = (i * K_MAX + j)%8;
			//*((volatile uint8_t*)(0x00001000+i*K_MAX + j)) = i*K_MAX + j;
			//value++;
			//*(MEM_DATA_ADR+j+(i*N_MAX)) = *(PORT_DATA_OA+j+(i*N_MAX));
		}
	}
	// W initialization on Memory
	for (uint8_t i = 0; i < K_MAX; i++) {
		for (uint8_t j = 0; j < N_MAX; j++) {
			MEM_DATA_W[i * N_MAX + j] = (i * N_MAX + j)%8;
		}
	}
	// OA initialization on Memory
	// Write the software implementation here
	// for loops
	// 		MEM_DATA_OA_G[...] = ...

	// IA from MEM to ACC
	for (uint8_t i = 0; i < M_MAX; i++) {
		for (uint8_t j = 0; j < K_MAX/4; j++) {
			// IA0
			PORT_DATA_IA0[i * K_MAX/4 + j] = MEM_DATA_IA[i * K_MAX + j];
			// IA1
			PORT_DATA_IA1[i * K_MAX/4 + j] = MEM_DATA_IA[i * K_MAX + (j+K_MAX/4)];
			// IA2
			PORT_DATA_IA2[i * K_MAX/4 + j] = MEM_DATA_IA[i * K_MAX + (j+K_MAX/2)];
			// IA3
			PORT_DATA_IA3[i * K_MAX/4 + j] = MEM_DATA_IA[i * K_MAX + (j+3*K_MAX/4)];
		}
	}

	// W from MEM to ACC
	for (uint8_t i = 0; i < N_MAX/4; i++) {
		for (uint8_t j = 0; j < K_MAX/4; j++) {
			// W00
			PORT_DATA_W00[j * N_MAX/4 + i] = MEM_DATA_W[i * K_MAX + j];
			// W01
			PORT_DATA_W01[j * N_MAX/4 + i] = MEM_DATA_W[i * K_MAX + j+K_MAX/4];
			// W02
			PORT_DATA_W02[j * N_MAX/4 + i] = MEM_DATA_W[i * K_MAX + j+K_MAX/2];
			// W03
			PORT_DATA_W03[j * N_MAX/4 + i] = MEM_DATA_W[i * K_MAX + j+3*K_MAX/4];
			// W10
			PORT_DATA_W10[j * N_MAX/4 + i] = MEM_DATA_W[(i+2) * K_MAX + j];
			// W11
			PORT_DATA_W11[j * N_MAX/4 + i] = MEM_DATA_W[(i+2) * K_MAX + j+K_MAX/4];
			// W12
			PORT_DATA_W12[j * N_MAX/4 + i] = MEM_DATA_W[(i+2) * K_MAX + j+K_MAX/2];
			// W13
			PORT_DATA_W13[j * N_MAX/4 + i] = MEM_DATA_W[(i+2) * K_MAX + j+3*K_MAX/4];
			// W20
			PORT_DATA_W20[j * N_MAX/4 + i] = MEM_DATA_W[(i+4) * K_MAX + j];
			// W21
			PORT_DATA_W21[j * N_MAX/4 + i] = MEM_DATA_W[(i+4) * K_MAX + j+K_MAX/4];
			// W22
			PORT_DATA_W22[j * N_MAX/4 + i] = MEM_DATA_W[(i+4) * K_MAX + j+K_MAX/2];
			// W23
			PORT_DATA_W23[j * N_MAX/4 + i] = MEM_DATA_W[(i+4) * K_MAX + j+3*K_MAX/4];
			// W30
			PORT_DATA_W30[j * N_MAX/4 + i] = MEM_DATA_W[(i+6) * K_MAX + j];
			// W31
			PORT_DATA_W31[j * N_MAX/4 + i] = MEM_DATA_W[(i+6) * K_MAX + j+K_MAX/4];
			// W32
			PORT_DATA_W32[j * N_MAX/4 + i] = MEM_DATA_W[(i+6) * K_MAX + j+K_MAX/2];
			// W33
			PORT_DATA_W33[j * N_MAX/4 + i] = MEM_DATA_W[(i+6) * K_MAX + j+3*K_MAX/4];
		}
	}
    
	uint8_t cfg_status;

	*PORT_CFG_M_MAX = M_MAX;
	*PORT_CFG_K_MAX = K_MAX;
	*PORT_CFG_N_MAX = N_MAX;
	
	// enable the accelerator core (CFG_CTL)
	//*PORT_CFG_CTL = 0x03;
	
	while (1)
	{
		// this is polling implementation. You must implement interrupt mechanism.
		// read status (CFG_STS)
		// cfg_status = *PORT_CFG_STS;
		
		// checking status (CFG_STS)	
		// if (cfg_status & (1u << 0))	// CFG_STS[4]: interrupt
		// {
			// *PORT_CFG_CTL = 0x00;

			// // OA from ACC to MEM
			// for (uint8_t i = 0; i < M_MAX; i++) {
				// for (uint8_t j = 0; j < N_MAX/4; j++) {
					// // OA0
					// MEM_DATA_OA[i * N_MAX + j] 				= PORT_DATA_OA0[i * N_MAX/4 + j];
					// // OA1
					// MEM_DATA_OA[i * N_MAX + (j+N_MAX/4)] 	= PORT_DATA_OA1[i * N_MAX/4 + j];
					// // OA2
					// MEM_DATA_OA[i * N_MAX + (j+N_MAX/2)] 	= PORT_DATA_OA2[i * N_MAX/4 + j];
					// // OA3
					// MEM_DATA_OA[i * N_MAX + (j+3*N_MAX/4)] 	= PORT_DATA_OA3[i * N_MAX/4 + j];
				// }
			// }

			// *PORT_CFG_STS = 0xFF;
		// }		
	}
        
    return 0;
}
