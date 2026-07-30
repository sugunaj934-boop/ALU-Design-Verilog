# ALU-Design-Verilog

## Overview
An 8-bit Arithmetic Logic Unit (ALU) designed in Verilog, supporting 8 operations selected via a 3-bit opcode. Verified using a self-checking testbench simulated on Icarus Verilog via EDA Playground.

## Supported Operations
| Opcode | Operation | Description |
|--------|-----------|--------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | A & B |
| 011 | OR | A \| B |
| 100 | XOR | A ^ B |
| 101 | NOT | ~A |
| 110 | SHIFT_LEFT | A << 1 |
| 111 | SHIFT_RIGHT | A >> 1 |

## Files
- `alu.v` — ALU design module
- `alu_tb.v` — Testbench with 8 test cases

## Simulation Tool
Icarus Verilog (via EDA Playground)

## Sample Output

Op: ADD A=15 B=10 Result=25 Carry=0 Zero=0
Op: SUB A=15 B=10 Result=5 Carry=0 Zero=0
Op: AND A=15 B=10 Result=10 Carry=0 Zero=0
Op: OR A=15 B=10 Result=15 Carry=0 Zero=0
Op: XOR A=15 B=10 Result=5 Carry=0 Zero=0
Op: NOT A=15 B=10 Result=240 Carry=0 Zero=0
Op: SHIFT_LEFT A=15 B=10 Result=30 Carry=0 Zero=0
Op: SHIFT_RIGHT A=15 B=10 Result=7 Carry=0 Zero=0
