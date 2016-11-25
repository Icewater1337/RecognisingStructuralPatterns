generating
initialize
|listGenerator kwParser|
kwParser:= (KeyValueParserFactory new) generateParser.


listGenerator:= (ListParserFactory new).
listGenerator begin: ${ asParser token.
listGenerator end: $} asParser.
listGenerator delimiter: $; asParser.
listGenerator element: kwParser.
	super initialize.
	
	key:= NilParserFactory new generateParser.
	arguments:= listGenerator generateParser

	
	