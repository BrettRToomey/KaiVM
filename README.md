# KaiVM
A register-based virtual machine and disassembler that is used by [Kai](https://github.com/kai-language/kai)'s compile time execution.

# Bytecode
> TODO

KaiVM's bytecode is little endian

# Instruction builder
> TODO

# Disassembler
To ease debugging, KaiVM comes with a disassembler. You can build this target by running `kai code/disassembler.kai`. To disassemble some bytecode, simply invoke the disassembler with a file.

Example:
```
$ ./disassembler examples/a.bc 
ldi r1, #cd
add r4, r5
add r1, #abcd
hlt
```