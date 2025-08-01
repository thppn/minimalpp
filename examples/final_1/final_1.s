b Lmain
L0:
F:
sw $ra, -0($sp)
L1:
lw $t1, -12($s0)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -20($sp)
L2:
lw $t1, -20($sp)
sw $t1, -16($s0)
L3:
li $t1, 4
sw $t1, -20($s0)
L4:
lw $t1, -12($s0)
lw $t0, -8($sp)
sw $t1, ($t0)
L5:
lw $ra, -0($sp)
jr $ra
L6:
Lmain:
addi $sp, $sp, 28
move $s0, $sp
L7:
li $t1, 1
sw $t1, -12($sp)
L8:
addi $fp, $sp, 24
lw $t0, -12($sp)
sw $t0, -12($fp)
L9:
addi $t0, $sp, -16
sw $t0, -16($fp)
L10:
addi $t0, $sp, -24
sw $t0, -8($fp)
L11:
sw $sp, -4($fp)
addi $sp, $sp, 24
jal F
addi $sp, $sp, -24
L12:
lw $t1, -24($sp)
sw $t1, -20($sp)
L13:
li $v0, 1
lw $a0, -20($sp)
syscall
L14:
li $v0, 1
lw $a0, -16($sp)
syscall
L15:
L16:
