### Phase 4

`401B0F` is for `popq %rax`.

`401B1C` is for `movq %rax,%rdi`.

### Phase 5

`401BF7` is for  `movq %rsp,%rax`.

`401B1C` is for `movq %rax,%rdi`.

`401B0F` is for `popq %rax`.

`Fill with zeroes`

Need to perform copy `movl %eax,%esi`. How?

1. `401B1D` is for `movl %eax,%edi`.
2. `401B99` is for `movl %ecx,%edx`.
3. `401B4F` is for `movl %edx,%esi`.
4. `401B93` is for `movl %esp,%eax`.

### Phase 5, Alternative

`movq %rsp,%rdx` ? NO
`movq %rsp,%rcx` ? NO