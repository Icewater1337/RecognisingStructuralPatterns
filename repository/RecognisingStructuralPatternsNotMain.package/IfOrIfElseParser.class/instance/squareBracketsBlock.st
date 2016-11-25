statements
squareBracketsBlock	
	^space star, '[' asParser, (']' asParser not, (roundBracketsBlock / #any asParser)) star, ']' asParser