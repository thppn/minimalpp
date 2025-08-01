b Lmain
L0:
f2:
sw $ra, -0($sp)
L1:
lw $t1, -16($s0)
sw $t1, -20($s0)
L2:
lw $t1, -12($s0)
lw $t0, -4($sp)
addi $t0, $t0, -16
lw $t0, ($t0)
sw $t1, ($t0)
L3:
lw $ra, -0($sp)
jr $ra
L4:
f1:
sw $ra, -0($sp)
L5:
li $t1, 2
sw $t1, -16($s0)
L6:
addi $fp, $sp, 12
sw $sp, -4($fp)
addi $sp, $sp, 12
jal f2
addi $sp, $sp, -12
L7:
lw $ra, -0($sp)
jr $ra
L8:
Lmain:
addi $sp, $sp, 24
move $s0, $sp
L9:
li $t1, 3
sw $t1, -12($sp)
L10:
li $t1, 4
sw $t1, -16($sp)
L11:
addi $fp, $sp, 20
lw $t0, -12($sp)
sw $t0, -12($fp)
L12:
addi $t0, $sp, -16
sw $t0, -16($fp)
L13:
sw $sp, -4($fp)
addi $sp, $sp, 20
jal f1
addi $sp, $sp, -20
L14:
li $v0, 1
lw $a0, -16($sp)
syscall
L15:
li $v0, 1
lw $a0, -20($sp)
syscall
L16:
L17:
