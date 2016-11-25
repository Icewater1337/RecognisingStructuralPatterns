statements
block	
	^space star, '{' asParser, ('}' asParser not, (block / #any asParser)) star, '}' asParser