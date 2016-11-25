as yet unclassified
parse: input
	|parsers results|
	
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	parsers addAll: BruteForceCommandWithListWithKeyValuePairGenerator getParsers.
	parsers addAll: BruteForceJsonLikeGenerator getParsers.
	parsers addAll: BruteForceKeyValuePairOfListsOfKeyValuePairsGenerator getParsers.
	parsers addAll: BruteForceListOfListsGenerator getParsers.
	parsers addAll: BruteForceListOfStringsGenerator getParsers.
	parsers addAll: BruteForceTagOfTagsGenerator getParsers.
	parsers addAll: (BruteForceCommandGenerator getParsers:input).
	parsers addAll:( BruteForceKeyValueGenerator getParsers:input).
	parsers addAll: (BruteForceListGenerator getParsers: input).
	parsers addAll:(BruteForceStringGenerator getParsers: input).
	parsers addAll:(BruteForceTagGenerator getParsers: input).
	
	parsers do: [ :parser | 
		results add:(parser parse:input) ].
	
	^ results.
	
	
	
	
	

	
