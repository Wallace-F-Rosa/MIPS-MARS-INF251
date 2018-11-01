main:
	add $a2, $a2, $gp
	ld $t1, ($a2)
	beq $t1, 0, fim
	laco:
		add $t3, $t3, $t1
		add $a2, $a2, 4
		ld $t1, ($a2)
		bne $t1, 0, laco
	fim: