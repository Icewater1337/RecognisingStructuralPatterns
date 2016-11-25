enumeration
enumerate
	|parserList|
	
	parserList := OrderedCollection new.
	
	begins enumerate do: [ :beg | 
		ends enumerate do: [ :en | 
			delimiters enumerate do: [ :del | 
				elements enumerate do: [ :el |
					| generator parser |
					generator := ListGenerator new.
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