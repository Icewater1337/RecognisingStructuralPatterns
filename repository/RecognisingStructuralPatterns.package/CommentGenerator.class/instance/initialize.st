generating
initialize
	super initialize.
	
	beginComment:= '/*' asParser.
	endComment:= '*/' asParser.
	singleLineComment:= '//' asParser.
	
	
	