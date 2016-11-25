generating
initialize
	super initialize.
	
	key := NilGenerator new generateParser.
	value := NilGenerator new generateParser.
	delimiter:= $: asParser.