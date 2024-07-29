section .data
    prompt1 db 'Enter first number: ', 0
    prompt1_len equ $ - prompt1
    prompt2 db 'Enter second number: ', 0
    prompt2_len equ $ - prompt2
    result_sum db 'The sum is: ', 0
    result_sum_len equ $ - result_sum
    newline db 10, 0

section .bss
    num1 resb 4
    num2 resb 4
    res resb 4

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt1
    mov edx, prompt1_len
    int 0x80

    ; Aca muestro el numero
    mov eax, 3
    mov ebx, 0
    mov ecx, num1
    mov edx, 4
    int 0x80

    ; De ASCII a entero
    sub byte [num1], '0'
    movzx eax, byte [num1]
    mov [num1], eax

    mov eax, 4
    mov ebx, 1
    mov ecx, prompt2
    mov edx, prompt2_len
    int 0x80

    ; Segundo numero
    mov eax, 3
    mov ebx, 0
    mov ecx, num2
    mov edx, 4
    int 0x80

    ; De ASCII a entero x2
    sub byte [num2], '0'
    movzx eax, byte [num2]
    mov [num2], eax

    ; Suma
    mov al, [num1]
    add al, [num2]
    add al, '0'
    mov [res], al

    mov eax, 4
    mov ebx, 1
    mov ecx, result_sum
    mov edx, result_sum_len
    int 0x80

    ; Mostrar la suma
    mov eax, 4
    mov ebx, 1
    mov ecx, res
    mov edx, 1
    int 0x80

    ; El print
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    
    mov eax, 1
    xor ebx, ebx
    int 0x80

