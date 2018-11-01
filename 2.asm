main:
	ld $t1, ($gp)
	ld $t2, 4($gp)
	ld $t3, 8($gp)
	t1:
	slt $t4, $t1, $t2
	beq $t4,1,swap1
	t2:
	slt $t4, $t2, $t3
	beq $t4,1,swap2
	t3:
	slt $t4, $t1, $t2
	beq $t4,1,swap3
	save:
	sw $t1, ($gp)
	sw $t2, 4($gp)
	sw $t3, 8($gp)
	j fim
	
swap1:
	xor $t1,$t1, $t2
	xor $t2,$t1, $t2
	xor $t1,$t1, $t2
	slt $t4, $t2, $t3
	j t2
	
swap2:
	xor $t2,$t2, $t3
	xor $t3,$t2, $t3
	xor $t2,$t2, $t3
	j t3
	
swap3:
	xor $t1,$t1, $t2
	xor $t2,$t1, $t2
	xor $t1,$t1, $t2
	j save

fim:
	
