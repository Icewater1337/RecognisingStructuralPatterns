as yet unclassified
parse: input
	|parsers results|
	
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	parsers addAll: CommandWithListWithKeyValuePairEnumerator getParsers.
	parsers addAll: JsonLikeEnumerator getParsers.
	parsers addAll: KeyValuePairOfListsOfKeyValuePairsEnumerator getParsers.
	parsers addAll: ListOfListsEnumerator getParsers.
	parsers addAll: ListOfStringsEnumerator getParsers.
	parsers addAll: TagOfTagsEnumerator getParsers.
	parsers addAll: (CommandEnumerator getParsers:input).
	parsers addAll:( KeyValueEnumerator getParsers:input).
	parsers addAll: (ListEnumerator getParsers: input).
	parsers addAll:(StringEnumerator getParsers: input).
	parsers addAll:(TagEnumerator getParsers: input).
	
	parsers do: [ :parser | 
		results add:(parser parse:input) ].
	
	^ results.
	
	
	
	
	

	
