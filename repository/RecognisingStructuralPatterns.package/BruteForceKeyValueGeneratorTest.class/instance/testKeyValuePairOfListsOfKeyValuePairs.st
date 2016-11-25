as yet unclassified
testKeyValuePairOfListsOfKeyValuePairs
	| parsers listEnum|

	
	listEnum := (BruteForceListGenerator new).
	listEnum elements:  {(NamedReferenceGenerator named: #keyValuePair) / NilParserFactory new }.
	
	
	enumerator := BruteForceKeyValueGenerator new.
	enumerator keys: {NilParserFactory new generateParser}.
	enumerator values: (listEnum) / (BruteForceStringGenerator new ).

	parsers := enumerator enumerate.
	parsers do: [ :p | p deepResolve: (#keyValuePair ->p) ].
	
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '"foo":("bar1":"foo","bar2","hoo":"hee")' ]
