enumeration
generate
	|parserList|
	
	parserList := OrderedCollection new.
	
	keys generate do: [ :_key | 
		arguments generate do: [ :_arguments | 
			| generator parser |
			generator := CommandParserFactory new.
			generator
				key:  _key generateParser;
				arguments: _arguments generateParser;
				yourself.
			
			parser := generator generateParser.
				
			parserList add: parser.
	] ] .

	^ parserList