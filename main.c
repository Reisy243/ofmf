#include "flame.h"
#include "cpu.h"
#include "emmc.h"
#include "gpu.h"
#include "ram.h"

int main() {
	// Initialiser basic componentes of preloader
	cpu_init();
	emmc_init();
	gpu_init();
	ram_init();

	// Load Operative System from the storage
	emmc_load_os();

	// Print the message "Wah World"
	printf("Wah World\n");

	return 0;
}
