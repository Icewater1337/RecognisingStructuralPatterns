generating
initialize
	super initialize.
	
	beginBlock := ${ asParser.
	endBlock := $} asParser. 
	beginKw:= '\begin' asParser.
	endKw:= '\end' asParser.
	element := NilGenerator whatever.