# KaiVM
A register-based virtual machine and disassembler that is used by [Kai](https://github.com/kai-language/kai)'s compile time execution.

# Bytecode
All instructions are stored in 16 bits<sup>*</sup> with an immediate 0 to 8 bytes.
```
/----------------------------------------------------\
| Opcode Byte | Arguments | Immediate (0 - 8 bytes)† |
\----------------------------------------------------/
```
<sup>*</sup>: KaiVM's bytecode is little endian<br>
<sup>†</sup>: An instruction has an immediate value when the opcode's most significant bit is set.

# Status flags
```
7  bit  0
---- ----
rrrB ALGZ
|||| ||||
|||| |||+- Zero: TODO
|||| ||+-- Greater: TODO
|||| |+--- Less: TODO
|||| +---- Above: TODO
|||+------ Below: TODO
+++------- Reserved: No effect
```

# Instruction builder
> TODO

# Disassembler
To ease debugging, KaiVM comes with a disassembler. You can build this target by running `kai code/disassembler.kai`. To disassemble some bytecode, simply invoke the disassembler with a file.

Example:
```
$ ./disassembler examples/cmp.bc 
ldi r1, 2h
cpy r2, r1
cmp r1, r2
jeq 0h
hlt
```
