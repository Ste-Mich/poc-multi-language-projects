        .file   "factorial_assembly.s"
        .text
        .globl  factorial_assembly
        .type   factorial_assembly, @function

factorial_assembly:
.func_begin:
        pushq   %rbp
        movq    %rsp, %rbp
        movl    %edi, -20(%rbp)
        cmpl    $0, -20(%rbp)
        jns     .non_negative_case
        movl    $-1, %eax
        jmp     .function_exit
.non_negative_case:
        movl    $1, -8(%rbp)
        movl    $1, -4(%rbp)
        jmp     .loop_condition
.loop_body:
        movl    -8(%rbp), %eax
        imull   -4(%rbp), %eax
        movl    %eax, -8(%rbp)
        addl    $1, -4(%rbp)
.loop_condition:
        movl    -4(%rbp), %eax
        cmpl    -20(%rbp), %eax
        jle     .loop_body
        movl    -8(%rbp), %eax
.function_exit:
        popq    %rbp
        ret
.func_end:
        .size   factorial_assembly, .-factorial_assembly
        .section        .rodata

