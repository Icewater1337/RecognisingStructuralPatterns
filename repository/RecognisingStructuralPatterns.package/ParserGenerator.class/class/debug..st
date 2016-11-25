accessing
debug: input
	|parsers results|
	
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	parsers addAll: (BruteForceCommandWithListWithKeyValuePairGenerator getParsers: input).
	parsers addAll: BruteForceJsonLikeGenerator getParsers.
	parsers addAll: (BruteForceKeyValuePairOfListsOfKeyValuePairsGenerator getParsers:input).
	parsers addAll: (BruteForceListOfListsGenerator getParsers: input).
	parsers addAll: (BruteForceListOfStringsGenerator getParsers:input).
	parsers addAll: (BruteForceTagOfTagsGenerator getParsers:input).
	parsers addAll: (BruteForceCommandGenerator getParsers:input).
	parsers addAll:( BruteForceKeyValueGenerator getParsers:input).
	parsers addAll: (BruteForceListGenerator getParsers: input).
	parsers addAll:(BruteForceStringGenerator getParsers: input).
	parsers addAll:(BruteForceTagGenerator getParsers: input).
	
	
	parsers do: [ :parser | 
		results add:([ parser debug:input. ] valueWithin: 900 milliSeconds onTimeout:#failure) ].
	
	^ results.
	
	
	

	
