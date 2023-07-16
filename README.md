# Commander X16 Template

This repository contains my personal template for a Commander X16 project, which uses the `ca65` assembler.

## Commands

### `make`
Builds the project. The output file will be `BUILD.PRG`

### `make run`
Builds the project and runs it in the emulator. The emulator binary should be titled `x16emu`, and should be in the system path.

### `make release`
Builds the project with optimizations (`-O` flag in `cl65`). The output file will be `RELEASE.PRG`
