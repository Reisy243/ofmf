#include "cpu.h"
#include "gpu.h"
#include "ram.h"

int main() {
	// Initialiser basic componentes of preloader
	cpu_init();
	gpu_init();
	ram_init();

	// Print the message "Wah World"
	printf("Wah World\n");

	return 0;
}
