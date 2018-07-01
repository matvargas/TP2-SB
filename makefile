CC=msp430-gcc
CFLAGS=-Os
CPPFLAGS=
TARGET=msp430g2553
OUTPUT=main.elf
all: clean $(OUTPUT) mspdebug

$(OUTPUT):
	$(CC) $(CFLAGS) $(CPPFLAGS) -mmcu=$(TARGET) main.c -o $(OUTPUT)

clean:
	-rm $(OUTPUT)

mspdebug: 
	mspdebug rf2500