b Lmain
L0:
Lmain:
addi $sp, $sp, 32
move $s0, $sp
L1:
li $t1, 1
sw $t1, -24($sp)
L2:
li $t1, 4
sw $t1, -12($sp)
L3:
lw $t1, -24($sp)
lw $t2, -12($sp)
blt $t1, $t2, L5
L4:
b L9
L5:
li $v0, 1
lw $a0, -24($sp)
syscall
L6:
lw $t1, -24($sp)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -28($sp)
L7:
lw $t1, -28($sp)
sw $t1, -24($sp)
L8:
b L3
L9:
li $v0, 1
lw $a0, -12($sp)
syscall
L10:
L11:
