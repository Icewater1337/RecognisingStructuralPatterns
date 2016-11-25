statements
ifStmt
	^ if, ('{' asParser not, any) star, block