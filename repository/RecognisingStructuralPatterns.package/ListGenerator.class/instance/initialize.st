initialization
initialize
	super initialize.
	
	begin := $[ asParser.
	end := $] asParser.
	delimiter:= $, asParser.
	element:= NilGenerator whatever.