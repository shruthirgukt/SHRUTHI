include 'emu8086.inc'
print "Enter num:"
call scan_num
mov ax,cx
printn
mov bx,10

armstrong:
div bx 
mov si,ax
mov sp,01
mov ax,dx
mov bp,dx
mov dx,00
l2:
mul bp
mov dx,00
inc sp
cmp sp,3
jne l2 
add sum,ax
mov ax,si
cmp ax,00
jne armstrong
cmp cx,sum 
jne p
print "Armstrong num"  
hlt

p:
print "not Armstrong num" 
hlt

sum dw 00
define_scan_num
define_print_num
define_print_num_uns
 
