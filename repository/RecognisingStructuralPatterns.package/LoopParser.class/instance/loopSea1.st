seas
loopSea1
	^ 	(loop not, any) star,
		loopStmt1,
		((loop / eof) not, any) star