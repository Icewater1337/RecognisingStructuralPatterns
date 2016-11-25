statements
forStmt
	^ for, #space asParser star, ('{' asParser negate/ '}' asParser negate) star,  block