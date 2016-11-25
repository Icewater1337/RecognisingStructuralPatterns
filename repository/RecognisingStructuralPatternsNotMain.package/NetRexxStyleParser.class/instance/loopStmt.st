statements
loopStmt
	^ loop, #space asParser, #newline asParser negate star, #newline asParser, block