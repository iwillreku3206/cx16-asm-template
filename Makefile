COMPILER=cl65
EMU=x16emu

make:
	$(COMPILER) -o BUILD.PRG -t cx16 src/main.asm

release:
	$(COMPILER) -O -o RELEASE.PRG -t cx16 src/main.asm

run:
	make
	$(EMU) -prg BUILD.PRG -run -debug
