        global  main
        extern puts

        section .text
main:
        mov rdi, msg
        call puts wrt ..plt
        ret
msg:
        db      'hello world', 0 ; null terminate