main:
	ld $t1, ($gp)
	ld $t2, 4($gp)
	laco:
		add $t3, $t3, $t1
		sub $t2, $t2 ,1
		beq $t2, 0, fim
		j laco
	fim:
		sw $t3, 8($gp)