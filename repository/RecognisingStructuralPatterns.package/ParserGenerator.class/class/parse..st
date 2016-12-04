parsing
parse: input
	|parsers results finalResults|
	
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
	
	parsers do: [ :parser | 
		results add:([ (parser parse:input)		 ] valueWithin: 300 milliSeconds onTimeout:#failure) ].

	"not sure where to put this and how to solve it without isKindOf. I cant add "
		results do: [ :res |
			(res isKindOf: Collection)
				ifTrue:[
					(res size >1) 
					ifTrue:[
						finalResults add:
						((Element new)
							name:'__ROOT__';
							children: res;
							weight:0;
							yourself)]
						ifFalse:[finalResults add: res first]]
					ifFalse: [ 
						(res isKindOf: Node)
							ifTrue:[finalResults add:(res) ].]
				].

		
			
	^finalResults
	
	
	

	
