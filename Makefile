SOURCES := $(wildcard *.asm)
OBJECTS := $(patsubst %.asm,%.o,${SOURCES})
EXECUTABLE=$(OBJECTS:.o=)

all: ${EXECUTABLE}

%: %.o
	ld -m elf_i386 $^ -o $@

%.o: %.asm
	nasm -f elf -g $< -o $@

clean:
	rm -rf *o $(EXECUTABLE)

