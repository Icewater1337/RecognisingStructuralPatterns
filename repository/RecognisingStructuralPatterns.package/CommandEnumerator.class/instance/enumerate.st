enumeration
enumerate
	|parserList|
	
	parserList := OrderedCollection new.

	keys enumerate do: [ :_key | 
		arguments enumerate do: [ :_arguments | 
			| generator parser |
			generator := CommandGenerator new.
			generator
				key:  _key generateParser;
				arguments: _arguments generateParser;
				yourself.
			
			parser := generator generateParser.
				
			parserList add: parser.
	] ] .

	^ parserList