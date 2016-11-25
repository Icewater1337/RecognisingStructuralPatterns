statements
block
	^ '{' asParser, ('}' asParser not, (block / any)) star, '}' asParser