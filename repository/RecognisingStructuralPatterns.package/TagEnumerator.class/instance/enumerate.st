as yet unclassified
enumerate
	|parserList|
	parserList := OrderedCollection new.
	begins do: [ :beg | 
		ends do: [ :en | 
			endTagSymbols do: [ :endTagSymb | 
					elements do: [ :elt |
						|generator parser |
						generator := TagGenerator new.
						generator 
							begin: beg generateParser;
							end: en generateParser;
							endTagSymbol: endTagSymb generateParser;
							element: elt generateParser;
							yourself. 
						parser:= generator generateParser.
						
						parserList add: parser.
					] ] ]].

	^ parserList