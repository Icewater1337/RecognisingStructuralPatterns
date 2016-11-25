enumeration
generate
	|parserList|
	
	parserList := OrderedCollection new.
	
	begins generate do: [ :beg | 
		ends generate do: [ :en | 
			delimiters generate do: [ :del | 
				elements generate do: [ :el |
					| generator parser |
					generator := ListParserFactory new.
					generator
						begin: beg generateParser;
						end: en generateParser;
						delimiter: del generateParser;
						element: el generateParser; "this ensures new instance for each iteration in a loop"
						yourself.
					parser := generator generateParser.
					
					parserList add: parser.
	] ] ] ].

	^ parserList