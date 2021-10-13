        global  _start

        section .data
msg:    db      'hello world', 10 ; \n

        section .text
_start:
        mov edx, 13     ; num bytes (+ linefeed);
        mov ecx, msg    ; mov addr_of msg to ecx
        mov ebx, 1      ; stdout
        mov eax, 4      ; sys_write (kernel opcode 4)
        int 80h