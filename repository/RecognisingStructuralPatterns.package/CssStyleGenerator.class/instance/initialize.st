generating
initialize
	super initialize.
	
	beginBlock:= ${ asParser.
	endBlock:= $} asParser.
	lineDelimiter:= $; asParser.
	element:= (KeyValueGenerator new generateParser) .
	
	
	