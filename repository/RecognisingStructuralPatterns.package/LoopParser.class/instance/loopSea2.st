seas
loopSea2
	^ 	(loop not, any) star,
		loopStmt2,
		((loop / eof) not, any) star