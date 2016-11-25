generating
initialize
	super initialize.
	
	key := NilParserFactory new generateParser.
	value := NilParserFactory new generateParser.
	delimiter:= $: asParser.