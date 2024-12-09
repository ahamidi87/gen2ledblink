# LED Blink Genesys 2

A simple design written in Verilog to provide LED blinking example for FPGA board genesys 2.
The Bitstream File need to be generated via Vivado ML Enterprise. 
[Genesys 2 Reference Manual](https://digilent.com/reference/programmable-logic/genesys-2/reference-manual)

Use the following to flash the bitstream:

```bash
penFPGALoader --board genesys2 -m blinky.bi
```