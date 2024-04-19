#include <mbed.h>

BufferedSerial serial(PE_1, PE_0, 9600);
char buf[2] = {0};
DigitalOut led1(LED1);
FILE * pc;

int main() {
	pc = fdopen(&serial, "r+");
	
	while(true)
	{
        led1 = !led1;
		fprintf(pc, "Teste\n");
        serial.write(buf, 1);
	}
}