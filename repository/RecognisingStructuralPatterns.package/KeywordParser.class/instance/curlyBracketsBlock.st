blocks
curlyBracketsBlock	
	^space star, '{' asParser, ('}' asParser not, (curlyBracketsBlock / #any asParser)) star, '}' asParser