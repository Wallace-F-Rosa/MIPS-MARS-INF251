main:
	ld $t1 4($gp) # B
	ld $t2, ($gp) # A
	slt $t4, $t1, $t2
	beq $t4,1,fim
	laco:
		sub $t1, $t1, $t2
		slt $t4, $t1, $t2
		bne $t4, 1, laco
	fim:
		sw $t1, 8($gp) # C