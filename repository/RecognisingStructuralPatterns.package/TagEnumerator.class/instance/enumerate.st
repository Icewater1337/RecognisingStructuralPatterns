as yet unclassified
enumerate
	|parserList|
	parserList := OrderedCollection new.
	begins enumerate do: [ :beg | 
		ends enumerate do: [ :en | 
			endTagSymbols enumerate do: [ :endTagSymb | 
					elements enumerate do: [ :elt |
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