arithmetic
generate
	|parserList|
	parserList := OrderedCollection new.
	begins generate do: [ :beg | 
		ends generate do: [ :en | 
			endTagSymbols generate do: [ :endTagSymb | 
					elements generate do: [ :elt |
						|factory parser |
						factory := TagParserFactory new.
						factory 
							begin: beg generateParser;
							end: en generateParser;
							endTagSymbol: endTagSymb generateParser;
							element: elt generateParser;
							tagName: (((#word asParser plus token), (en asParser negate star token)) ==> #first);
							yourself. 
						
						parser:= factory generateParser.
						
						parserList add: parser.
					] ] ]].

	^ parserList