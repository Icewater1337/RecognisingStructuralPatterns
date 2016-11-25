defaults
defaultArguments
|listGenerator kwParser|
kwParser:= (KeyValueGenerator new) generateParser.


listGenerator:= (ListGenerator new).
listGenerator begin: ${ asParser token.
listGenerator end: $} asParser.
listGenerator delimiter: $; asParser.
listGenerator element: kwParser.

	^ { listGenerator generateParser }