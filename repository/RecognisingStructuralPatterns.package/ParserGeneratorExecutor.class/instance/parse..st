parsing
parse: input
	|parsers generators results finalResults|
	
	generators:= ParserGenerator getBruteForceGeneratorSubclasses.
	finalResults:= OrderedCollection new.
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	generators do:[:gen | 
		parsers addAll: (gen getParsers: input)].
	
	
	parsers do: [ :parserr | 
		results add:([ (parserr parse:input)		 ] valueWithin: 5500 milliSeconds onTimeout:#failure) ].

	
	
	"not sure where to put this and how to solve it without isKindOf. I cant add "
		results do: [ :res |
			(res isKindOf: Collection) &(res asString= 'failure') not
				ifTrue:[
					(res size >1) 
					ifTrue:[
						finalResults add:
						((Element new)
							name:'__ROOT__';
							children: res;
							weight:0;
							yourself)]
						ifFalse:[
						(res first isKindOf: Node) 
								ifTrue:[finalResults add: res first]]]
					ifFalse: [ 
						(res isKindOf: Node)
							ifTrue:[finalResults add:(res) ].]
				].

		
			
	^finalResults
	
	
	

	
