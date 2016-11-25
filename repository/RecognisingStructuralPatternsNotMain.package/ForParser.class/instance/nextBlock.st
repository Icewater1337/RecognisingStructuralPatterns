statements
nextBlock	
	^ newline, ('next' asParser not, (block / #any asParser)) star, 'next' asParser