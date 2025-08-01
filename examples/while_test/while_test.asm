b Lmain
L0:
Lmain:
addi $sp, $sp, 44
move $s0, $sp
L1:
li $t1, 1
sw $t1, -12($sp)
L2:
li $t1, 1
sw $t1, -16($sp)
L3:
li $t1, 0
sw $t1, -20($sp)
L4:
li $v0, 5
syscall
sw $v0, -24($sp)
L5:
li $v0, 1
lw $a0, -12($sp)
syscall
L6:
li $v0, 1
lw $a0, -16($sp)
syscall
L7:
lw $t1, -20($sp)
lw $t2, -24($sp)
blt $t1, $t2, L9
L8:
b L20
L9:
lw $t1, -12($sp)
lw $t2, -16($sp)
add $t1, $t1, $t2
sw $t1, -28($sp)
L10:
lw $t1, -28($sp)
sw $t1, -12($sp)
L11:
li $v0, 1
lw $a0, -12($sp)
syscall
L12:
lw $t1, -20($sp)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -32($sp)
L13:
lw $t1, -32($sp)
sw $t1, -20($sp)
L14:
lw $t1, -16($sp)
lw $t2, -12($sp)
add $t1, $t1, $t2
sw $t1, -36($sp)
L15:
lw $t1, -36($sp)
sw $t1, -16($sp)
L16:
li $v0, 1
lw $a0, -16($sp)
syscall
L17:
lw $t1, -20($sp)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -40($sp)
L18:
lw $t1, -40($sp)
sw $t1, -20($sp)
L19:
b L7
L20:
L21:
