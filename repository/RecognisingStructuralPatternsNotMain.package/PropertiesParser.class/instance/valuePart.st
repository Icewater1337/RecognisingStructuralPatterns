AST
valuePart
	 ^super valuePart ==>[:elt | 
		(RawText new)
			name: elt;
			yourself]