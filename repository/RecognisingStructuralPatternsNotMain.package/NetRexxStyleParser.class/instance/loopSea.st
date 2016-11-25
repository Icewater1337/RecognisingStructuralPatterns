seas
loopSea
	^ 	(loop not, any) star,
		loopStmt,
		((loop / eof) not, any) star