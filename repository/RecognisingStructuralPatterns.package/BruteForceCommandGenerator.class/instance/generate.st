enumeration
generate
	|parserList|
	
	parserList := OrderedCollection new.
	
	keys generate do: [ :_key | 
		arguments generate do: [ :_arguments | 
			| factory parser |
			factory := CommandParserFactory new.
			factory
				key:  _key generateParser;
				arguments: _arguments generateParser;
				yourself.
			
			parser := factory generateParser.
				
			parserList add: parser.
	] ] .

	^ parserList