statements
whileStmt
	^ while, #space asParser star, ('{' asParser negate/ '}' asParser negate) star,  block