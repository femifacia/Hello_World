global _start
section .data
  string: db "Hello World", 10 ; we declared a variable called string containing "Hello world" + "\n"
                               ; because 10 is "\n" in ascii
  string_len: equ $ - string   ; it is the value of the length of string
section .text

_start:
  mov rax, 1            ; 1 is the syscall for write
  mov rdi, 1            ; in the rdi we have to put the value of the fd of the output
                        ; 1 is STDOUT
  mov rsi, string       ; we have to move into rsi the adress of the string  
  mov rdx, string_len   ; the rdx is the size of string
  syscall               ; we call the syscall value in rax and  values in other registers will serve as argument

  mov rax, 60           ; 60 is the syscall for exit
  mov rdi, 0            ;   the code value (0 is success)
  syscall               ; we call exit(0)

