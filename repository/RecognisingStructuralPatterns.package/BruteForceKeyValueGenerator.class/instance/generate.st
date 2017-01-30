enumeration
generate
	|keyValueList|
	
	keyValueList := OrderedCollection new.

	keys generate do: [ :key | 
		delimiters generate do: [ :del | 
			values generate do: [ :val | 
				| factory parser |
					factory := KeyValueParserFactory new.
					factory
						key: key generateParser;
						value: val generateParser;
						delimiter: del  generateParser;
						
						yourself.
					parser := factory generateParser.
					
					keyValueList add: parser.
	] ] ] .

	^ keyValueList