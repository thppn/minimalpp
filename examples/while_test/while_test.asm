#==========[L:0]==========
b Lmain
# ['begin_block', 'fib', '_', '_']
L0:
Lmain:
addi $sp, $sp, 44
move $s0, $sp
# [':=', '1', '_', 'x']
L1:
li $t1, 1
sw $t1, -12($sp)
# [':=', '1', '_', 'y']
L2:
li $t1, 1
sw $t1, -16($sp)
# [':=', '0', '_', 'z']
L3:
li $t1, 0
sw $t1, -20($sp)
# ['inp', 'k', '_', '_']
L4:
li $v0, 5
syscall
sw $v0, -24($sp)
# ['out', 'x', '_', '_']
L5:
li $v0, 1
lw $a0, -12($sp)
syscall
# ['out', 'y', '_', '_']
L6:
li $v0, 1
lw $a0, -16($sp)
syscall
# ['<', 'z', 'k', 9]
L7:
lw $t1, -20($sp)
lw $t2, -24($sp)
blt $t1, $t2, L9
# ['jump', '_', '_', 20]
L8:
b L20
# ['+', 'x', 'y', 'T_1']
L9:
lw $t1, -12($sp)
lw $t2, -16($sp)
add $t1, $t1, $t2
sw $t1, -28($sp)
# [':=', 'T_1', '_', 'x']
L10:
lw $t1, -28($sp)
sw $t1, -12($sp)
# ['out', 'x', '_', '_']
L11:
li $v0, 1
lw $a0, -12($sp)
syscall
# ['+', 'z', '1', 'T_2']
L12:
lw $t1, -20($sp)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -32($sp)
# [':=', 'T_2', '_', 'z']
L13:
lw $t1, -32($sp)
sw $t1, -20($sp)
# ['+', 'y', 'x', 'T_3']
L14:
lw $t1, -16($sp)
lw $t2, -12($sp)
add $t1, $t1, $t2
sw $t1, -36($sp)
# [':=', 'T_3', '_', 'y']
L15:
lw $t1, -36($sp)
sw $t1, -16($sp)
# ['out', 'y', '_', '_']
L16:
li $v0, 1
lw $a0, -16($sp)
syscall
# ['+', 'z', '1', 'T_4']
L17:
lw $t1, -20($sp)
li $t2, 1
add $t1, $t1, $t2
sw $t1, -40($sp)
# [':=', 'T_4', '_', 'z']
L18:
lw $t1, -40($sp)
sw $t1, -20($sp)
# ['jump', '_', '_', 7]
L19:
b L7
# ['halt', '_', '_', '_']
L20:
# ['end_block', 'fib', '_', '_']
L21:
