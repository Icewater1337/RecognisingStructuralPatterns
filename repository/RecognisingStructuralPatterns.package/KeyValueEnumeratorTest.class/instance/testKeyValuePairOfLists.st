as yet unclassified
testKeyValuePairOfLists
	| parsers |
	enumerator := KeyValueEnumerator new.
	enumerator keys: {NilGenerator new generateParser}.
	enumerator values: ListEnumerator new enumerate.

	parsers := enumerator enumerate.
	
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '"foo":("bar1","bar2")' ]
