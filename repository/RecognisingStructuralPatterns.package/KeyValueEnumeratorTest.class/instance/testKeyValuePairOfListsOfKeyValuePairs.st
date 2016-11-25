as yet unclassified
testKeyValuePairOfListsOfKeyValuePairs
	| parsers listEnum|

	
	listEnum := (ListEnumerator new).
	listEnum elements:  {(NamedReferenceGenerator named: #keyValuePair) / NilGenerator new }.
	
	
	enumerator := KeyValueEnumerator new.
	enumerator keys: {NilGenerator new generateParser}.
	enumerator values: listEnum enumerate/ StringEnumerator new enumerate.

	parsers := enumerator enumerate.
	parsers do: [ :p | p deepResolve: (#keyValuePair ->p) ].
	
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '"foo":("bar1":"foo","bar2","hoo":"hee")' ]
