initialization
initialize
	super initialize.
	
	begin := $" asParser.
	end := $" asParser.
	escape := ('\' asParser / '"' asParser).