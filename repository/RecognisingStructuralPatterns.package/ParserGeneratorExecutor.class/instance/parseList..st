parsing
parseList: aList
	|parsers generators subResults results finalSubResults |
	results:= OrderedCollection new.
	subResults:= OrderedCollection new.
	"build parsers from the first element of the set, which is supposed to be the shortest. Then reuse them"
	
	generators:= ParserGenerator getBruteForceGeneratorSubclasses.
	parsers:= OrderedCollection new.
	
	generators do:[:gen | parsers addAll: (gen getParsers: aList first)].
	
	"not 100% sure about this, can be done better?"

		parsers removeAllSuchThat: [ :parser | 
			([ (parser parse:(aList first)) isPetitFailure		 ] valueWithin: 300 milliSeconds onTimeout:(true)) ].
		
					
	"now proceed as usual, take the whole set and parse stuff with the remaining parsers"
	aList do: [ :elt |
		subResults:= OrderedCollection new.
		finalSubResults:= OrderedCollection new.
		parsers do: [ :parser |
			subResults add:([ (parser parse:elt)		 ] valueWithin: 2000 milliSeconds onTimeout:#failure).  		].	
							
			subResults do: [ :res |
				(res isKindOf: Collection) &(res asString= 'failure') not
				ifTrue:[
					(res size >1) 
					ifTrue:[
						finalSubResults add:
						((Element new)
							name:'__ROOT__';
							children: res;
							weight:0;
							yourself)]
						ifFalse:[
							(res first isKindOf: Node) 
								ifTrue:[finalSubResults add: res first]]]
					ifFalse: [ 
						(res isKindOf: Node)
							ifTrue:[finalSubResults add:(res) ].]

				].

		
		results add: finalSubResults.				
							].
			
		^results.