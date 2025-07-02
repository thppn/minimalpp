#==========[L:0]==========
b Lmain
# ['begin_block', 'forc', '_', '_']
L0:
Lmain:
addi $sp, $sp, 32
move $s0, $sp
# [':=', '1', '_', 'k']
L1:
li $t1, 1
sw $t1, -24($sp)
# [':=', '4', '_', 'x']
L2:
li $t1, 4
sw $t1, -12($sp)
# ['<', 'k', 'x', 5]
L3:
lw $t1, -24($sp)
lw $t2, -12($sp)
blt $t1, $t2, L5
# ['jump', '_', '_', 9]
L4:
b L9
# ['out', 'k', '_', '_']
L5:
li $v0, 1
lw $a0, -24($sp)
syscall
# ['+', 'k', '1', 'T_1']
L6:
lw $t1, -24($sp)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -28($sp)
# [':=', 'T_1', '_', 'k']
L7:
lw $t1, -28($sp)
sw $t1, -24($sp)
# ['jump', '_', '_', 3]
L8:
b L3
# ['out', 'x', '_', '_']
L9:
li $v0, 1
lw $a0, -12($sp)
syscall
# ['halt', '_', '_', '_']
L10:
# ['end_block', 'forc', '_', '_']
L11:
