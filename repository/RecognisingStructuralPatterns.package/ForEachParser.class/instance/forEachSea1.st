seas
forEachSea1
	^ 	(forEach not,for not, any) star, 
		(forEachStmt1 / forEachStmt2),
		((forEach / for / eof) not, any) star