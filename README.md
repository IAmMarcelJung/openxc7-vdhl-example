# openxc7-vhdl

This is a VHDL example/template project which can be used with the openXC7. To get the toolchain, either use [toolchain-nix](https://github.com/openXC7/toolchain-nix) (recommended) or install the toolchain using the [toolchain-installer](https://github.com/openXC7/toolchain-installer).

## Makefile Targets

Build the bitstream:
```bash
make
```

Flash the bitstream to the board via openFPGALoader:
```bash
make program
```

Remove all build artifacts (`.bit`, `.frames`, `.fasm`, `.json`):
```bash
make clean
```

Remove only PnR outputs (`.fasm`, `.frames`, `.bit`), keeping synthesis results:
```bash
make pnrclean
```
