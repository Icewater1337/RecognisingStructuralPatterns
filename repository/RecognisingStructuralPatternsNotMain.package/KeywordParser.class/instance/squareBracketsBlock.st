blocks
squareBracketsBlock	
	^space star, '[' asParser, (']' asParser not, (squareBracketsBlock / #any asParser)) star, ']' asParser