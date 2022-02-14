section .data

    msg db "Hola mundo!",10      ; 10 es el codigo ASCCI para una nueva linea



section .text

    global _start



_start:

    mov rax, 1                    ; llamada al sistema para escribir

    mov rdi, 1                     ; manejador de archivo 1 es stdout

    mov rsi, msg                 ; dirección de la cadena para el output

    mov rdx, 13                  ; numero de bytes ocupados en el output

    syscall                           ;invoca al sistema operativo para hacer la escritura 

    

    mov rax, 60                    ;llamada al sistema para salir 

    mov rdi, 0                       ; codigo de salida 0

    syscall                            ; invoca al sistema operativo para salir

