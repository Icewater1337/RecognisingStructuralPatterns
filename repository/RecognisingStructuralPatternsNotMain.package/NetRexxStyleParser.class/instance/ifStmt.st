statements
ifStmt
	^ if, #space asParser, 'then do' asParser negate star, 'then do' asParser, block