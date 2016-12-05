parsing
parse: input
	|parsers generators results finalResults|
	
	generators:= self getBruteForceGeneratorSubclasses.
	finalResults:= OrderedCollection new.
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	generators do:[:gen | parsers addAll: (gen getParsers: input)].
	
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
	
	
	

	
