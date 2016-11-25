seas
loopSea3
	^ 	(loop not, any) star,
		loopStmt3,
		((loop / eof) not, any) star