generating
initialize
	super initialize.
	
	begin := $< asParser.
	end := $> asParser. 
	endTagSymbol:= $/ asParser.
	element := NilGenerator new.