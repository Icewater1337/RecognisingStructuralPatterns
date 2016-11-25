generating
initialize
|listGenerator kwParser|
kwParser:= (KeyValueGenerator new) generateParser.


listGenerator:= (ListGenerator new).
listGenerator begin: ${ asParser token.
listGenerator end: $} asParser.
listGenerator delimiter: $; asParser.
listGenerator element: kwParser.
	super initialize.
	
	key:= NilGenerator new generateParser.
	arguments:= (listGenerator generateParser
	map: [:_nodes|
		| retval |
		retval := Array with:_nodes.
		retval
		
	])
	
	