parse
parse: input
	|parsers|
	
	parsers:= OrderedCollection new.
	parsers add: CommandWithListWithKeyValuePairEnumerator getParsers.
	parsers add: JsonLikeEnumerator getParsers.
	parsers add: KeyValuePairOfListsOfKeyValuePairsEnumerator getParsers.
	parsers add: ListOfListsEnumerator getParsers.
	parsers add: ListOfStringsEnumerator getParsers.
	parsers add: TagOfTagsEnumerator getParsers.
	
	
	
	
	

	
