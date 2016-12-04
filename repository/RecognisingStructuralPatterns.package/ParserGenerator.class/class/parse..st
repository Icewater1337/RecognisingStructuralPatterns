parsing
parse: input
	|parsers results parsersStar finalResults|
	
	parsersStar:= OrderedCollection new.
	finalResults:= OrderedCollection new.
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	parsers addAll: (BruteForceCommandWithListWithKeyValuePairGenerator getParsers: input).
	parsers addAll: BruteForceJsonLikeGenerator new generate.
	parsers addAll: (BruteForceKeyValuePairOfListsOfKeyValuePairsGenerator getParsers:input).
	parsers addAll: (BruteForceListOfListsGenerator getParsers: input).
	parsers addAll: (BruteForceListOfStringsGenerator getParsers:input).
	parsers addAll: (BruteForceTagOfTagsGenerator getParsers:input).
	parsers addAll: (BruteForceCommandGenerator getParsers:input).
	parsers addAll:( BruteForceKeyValueGenerator getParsers:input).
	parsers addAll: (BruteForceListGenerator getParsers: input).
	parsers addAll:(BruteForceStringGenerator getParsers: input).
	parsers addAll:(BruteForceTagGenerator getParsers: input).
	
	parsers do: [  :parser | parsersStar add: (parser nonEmpty star)].
	
	parsersStar do: [ :parser | 
		results add:([ (parser parse:input)		 ] valueWithin: 300 milliSeconds onTimeout:#failure) ].
	
	results do: [ :res |
		(res size = 1)
			ifFalse:[
				(res allSatisfy: [ :_elt | _elt isKindOf: Node])
				ifTrue:[
				finalResults add:
				((Element new)
					name:'__ROOT__';
					children: res;
					yourself)]
				ifFalse:[finalResults add:(res)]]
			ifTrue: [ finalResults add:(res first) ].
		 ].

		
			
	^finalResults
	
	
	

	
