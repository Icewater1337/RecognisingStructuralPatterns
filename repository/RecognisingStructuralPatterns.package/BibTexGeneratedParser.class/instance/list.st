as yet unclassified
list
 | listParser |
listParser:= ( ListGenerator new)
		begin:${ asParser token;
		end:$} asParser;
		delimiter:$, asParser;
		element: keyValue /string/ StringGenerator identifier  / NilGenerator new generateParser; "nilgen?"
		generateParser .
		
^listParser
"	map: [:_nodes|
		| retval |
		retval := Array with:_nodes.
		retval
	
	]
"