initialization
initialize
	super initialize.
	
	begin := $[ asParser token.
	end := $] asParser token.
	delimiter:= $, asParser token.
	element:= NilParserFactory new generateParser.