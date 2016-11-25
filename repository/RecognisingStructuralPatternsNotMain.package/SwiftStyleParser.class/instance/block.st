statements
block
	^ #space asParser star , '{' asParser, '}'asParser negate star, '}' asParser