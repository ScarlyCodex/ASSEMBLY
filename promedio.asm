.486
.model flat, stdcall
option casemap :none

      include \masm32\include\windows.inc
      include \masm32\include\user32.inc
      include \masm32\include\kernel32.inc
      include \masm32\include\gdi32.inc
      include \masm32\include\masm32rt.inc
      
      includelib \masm32\lib\user32.lib
      includelib \masm32\lib\kernel32.lib
      includelib \masm32\lib\gdi32.lib
      includelib \masm32\lib\masm32rt.lib
    
.code
start:
call calificaciones
exit 

calificaciones proc
LOCAL opcion
LOCAL cali
LOCAL res
LOCAL n
LOCAL dividendo
invoke ClearScreen
print chr$("      [+][+][+][+][+][+][+][+][+]")
print chr$(13,10)
print chr$(13,10)
print chr$("[-] PROGRAMA PARA CALCULAR PROMEDIO [-]")
print chr$(13,10)
print chr$(13,10)
print chr$("      [+][+][+][+][+][+][+][+][+]")
print chr$(13,10)
print chr$(13,10)
print chr$("         BY VICTORIA LORETO <3")
print chr$(13,10)
print chr$(13,10)

print chr$(" PROMEDIAR ALUMNO: 1")
print chr$(13,10)
print chr$(" CERRAR EL PROGRAMA: 2")
print chr$(13,10)
print chr$(13,10)
mov opcion,sval(input("   OPCION: ")) 
print chr$(13,10)
print chr$(13,10)

.while (opcion != 2)
invoke ClearScreen

print chr$(" | DIGITA LAS CALIFICACIONES | ")
print chr$(13,10)
print chr$(13,10)

.if opcion == 1

mov cali,sval(input("   CALIFICACION 1: "))

print chr$(13,10)
mov eax,cali
add n,eax

mov ecx, 1
add dividendo, ecx

mov cali,sval(input("   CALIFICACION 2: "))

print chr$(13,10)
mov eax,cali
add n,eax

mov ecx, 1
add dividendo, ecx

mov cali,sval(input("   CALIFICACION 3: "))

print chr$(13,10)
mov eax,cali
add n,eax

mov ecx, 1
add dividendo, ecx

mov cali,sval(input("   CALIFICACION 4: "))

print chr$(13,10)
mov eax,cali
add n,eax

mov ecx, 1
add dividendo, ecx

mov cali,sval(input("   CALIFICACION 5: "))

print chr$(13,10)
mov eax,cali
add n,eax

mov ecx, 1
add dividendo, ecx

mov cali,sval(input("   CALIFICACION 6: "))

print chr$(13,10)
mov eax,cali
add n,eax

mov ecx, 1
add dividendo, ecx

mov cali,sval(input("   CALIFICACION 7: "))

print chr$(13,10)
mov eax,cali
add n,eax

mov ecx, 1
add dividendo, ecx

print chr$(" PROMEDIO: ")

;proceso division 

MOV EDX,0 
MOV EAX,n
MOV EBX,dividendo
DIV EBX 
mov res,eax

.if res > 94
print str$(res)
print chr$(" Excelente!!")
.endif

.if res < 95
.if res > 84
print str$(res)
print chr$(" Notable!")
.endif
.endif

.if res < 85
.if res > 74
print str$(res)
print chr$(" Bien!")
.endif
.endif

.if res < 75
.if res > 69
print str$(res)
print chr$(" Suficiente")
.endif
.endif

.if res < 70
print str$(res)
print chr$(" N/A")
.endif

mov n,0
mov res,0
mov dividendo, 0

print chr$(13,10)
print chr$(13,10)
print chr$(" PROMEDIAR NUEVO ALUMNO: 1")
print chr$(13,10)
print chr$(" CERRAR: 2")
print chr$(13,10)
print chr$(13,10)
mov opcion,sval(input("    OPCION: ")) 

.endif

.endw
ret
calificaciones endp
end start