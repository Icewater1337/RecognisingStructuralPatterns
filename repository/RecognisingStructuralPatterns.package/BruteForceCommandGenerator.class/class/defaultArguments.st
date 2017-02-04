defaults
defaultArguments
|listGenerator kwParser|
kwParser:= (KeyValueParserFactory new) generateParser.


listGenerator:= (ListParserFactory new).
listGenerator begins: ${ asParser token.
listGenerator end: $} asParser.
listGenerator delimiter: $; asParser.
listGenerator element: kwParser.

	^ { listGenerator generateParser }