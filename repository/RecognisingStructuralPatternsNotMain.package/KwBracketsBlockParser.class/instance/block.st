statements
block	
	^ '{' asParser, ('}' asParser not, (block / #any asParser)) star, '}' asParser