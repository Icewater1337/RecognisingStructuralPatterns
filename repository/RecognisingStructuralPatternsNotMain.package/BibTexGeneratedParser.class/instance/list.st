as yet unclassified
list
 | listParser |
listParser:= ( ListParserFactory new)
		begin:${ asParser token;
		end:$} asParser;
		delimiter:$, asParser;
		element: keyValue /string/ StringParserFactory identifier  / NilParserFactory new generateParser; "nilgen?"
		generateParser .
		
^listParser
"	map: [:_nodes|
		| retval |
		retval := Array with:_nodes.
		retval
	
	]
"