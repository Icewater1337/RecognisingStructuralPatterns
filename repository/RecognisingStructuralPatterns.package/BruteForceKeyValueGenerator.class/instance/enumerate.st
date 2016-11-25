enumeration
enumerate
	|keyValueList|
	
	keyValueList := OrderedCollection new.

	keys enumerate do: [ :key | 
		delimiters enumerate do: [ :del | 
			values enumerate do: [ :val | 
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