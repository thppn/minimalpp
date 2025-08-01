b Lmain
L0:
addOne:
sw $ra, -0($sp)
L1:
lw $t1, -12($s0)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -20($sp)
L2:
lw $t1, -20($sp)
sw $t1, -12($s0)
L3:
lw $t1, -16($s0)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -24($sp)
L4:
lw $t1, -24($sp)
sw $t1, -16($s0)
L5:
lw $t1, -12($s0)
lw $t2, -16($s0)
add $t1, $t1, $t2
sw $t1, -28($sp)
L6:
lw $t1, -28($sp)
lw $t0, -8($sp)
sw $t1, ($t0)
L7:
lw $ra, -0($sp)
jr $ra
L8:
Lmain:
addi $sp, $sp, 36
move $s0, $sp
L9:
li $t1, 1
sw $t1, -12($sp)
L10:
li $t1, 2
sw $t1, -16($sp)
L11:
addi $fp, $sp, 32
addi $t0, $sp, -12
sw $t0, -12($fp)
L12:
addi $t0, $sp, -16
sw $t0, -16($fp)
L13:
addi $t0, $sp, -28
sw $t0, -8($fp)
L14:
sw $sp, -4($fp)
addi $sp, $sp, 32
jal addOne
addi $sp, $sp, -32
L15:
lw $t1, -28($sp)
sw $t1, -24($sp)
L16:
lw $t1, -12($sp)
lw $t2, -16($sp)
add $t1, $t1, $t2
sw $t1, -32($sp)
L17:
lw $t1, -32($sp)
sw $t1, -20($sp)
L18:
lw $t1, -20($sp)
lw $t2, -24($sp)
bne $t1, $t2, L20
L19:
b L22
L20:
li $v0, 1
li $a0, 1
syscall
L21:
b L23
L22:
li $v0, 1
li $a0, 0
syscall
L23:
li $v0, 1
lw $a0, -20($sp)
syscall
L24:
li $v0, 1
lw $a0, -24($sp)
syscall
L25:
L26:
