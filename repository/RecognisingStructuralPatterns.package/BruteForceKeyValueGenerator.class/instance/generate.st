enumeration
generate
	|keyValueList|
	
	keyValueList := OrderedCollection new.

	keys generate do: [ :key | 
		delimiters generate do: [ :del | 
			values generate do: [ :val | 
				| generator parser |
					generator := KeyValueParserFactory new.
					generator
						key: key generateParser;
						value: val generateParser;
						delimiter: del  generateParser;
						
						yourself.
					parser := generator generateParser.
					
					keyValueList add: parser.
	] ] ] .

	^ keyValueList