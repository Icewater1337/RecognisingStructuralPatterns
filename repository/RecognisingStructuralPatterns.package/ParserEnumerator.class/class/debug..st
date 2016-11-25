as yet unclassified
debug: input
	|parsers results|
	
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	parsers add: CommandWithListWithKeyValuePairEnumerator getParsers.
	parsers add: JsonLikeEnumerator getParsers.
	parsers add: KeyValuePairOfListsOfKeyValuePairsEnumerator getParsers.
	parsers add: ListOfListsEnumerator getParsers.
	parsers add: ListOfStringsEnumerator getParsers.
	parsers add: TagOfTagsEnumerator getParsers.
	parsers add: (CommandEnumerator getParsers:input).
	parsers add:( KeyValueEnumerator getParsers:input).
	parsers add: (ListEnumerator getParsers: input).
	parsers add:(StringEnumerator getParsers: input).
	parsers add:(TagEnumerator getParsers: input).
	
	parsers do: [ :parser | 
		results add:(parser debug: input) ].
	
	^ results.
	
	
	
	
	

	
