code segment
    assume cs:code, ds:code

main: mov ax, code
      mov ds, ax

      mov ax, -45
      mov dx, 46

      mov si, 1500h
      mov byte ptr[si], ax
      mov byte ptr[si+200h], cx

      cmp [si], 0
      ja num2

N2pos:cmp [si+200h], 0
