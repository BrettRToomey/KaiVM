CC=kai
debug:  CFLAGS = -emit-times
release:CFLAGS = -O3

all: debug

kvm:
	$(CC) $(CFLAGS) src/kvm.kai
disassembler:
	$(CC) $(CFLAGS) src/disassembler.kai

debug: clean kvm disassembler
release: clean kvm disassembler

clean:
	-rm kvm disassembler
