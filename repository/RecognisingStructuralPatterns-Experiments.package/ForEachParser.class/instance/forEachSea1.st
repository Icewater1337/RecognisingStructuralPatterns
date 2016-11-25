seas
forEachSea1
	^ 	(forEach not, any) star,
		forEachStmt1,
		((forEach / eof) not, any) star