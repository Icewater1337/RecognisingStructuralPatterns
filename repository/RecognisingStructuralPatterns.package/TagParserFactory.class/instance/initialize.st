generating
initialize
	super initialize.
	begin := $< asParser.
	end := $> asParser. 
	endTagSymbol:= $/ asParser.
	element := NilParserFactory new generateParser.
	tagName := ((#word asParser plus token), (end negate star token)) ==> #first