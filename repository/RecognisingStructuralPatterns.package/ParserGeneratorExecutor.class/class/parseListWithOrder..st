parsing
parseListWithOrder: aList	
	|parsers generators subResults results finalSubResults solutionsOfFirst solutionsOfFirstTmp 	parserEltList|
	results:= OrderedCollection new.
	subResults:= OrderedCollection new.
	solutionsOfFirst:= OrderedCollection new.
	solutionsOfFirstTmp:= OrderedCollection new.
	parserEltList:= OrderedCollection new.
			
	"build parsers from the first element of the set, which is supposed to be the shortest. Then reuse them"
	generators:= ParserGenerator getBruteForceGeneratorSubclasses.
	parsers:= OrderedCollection new.
	
	generators do:[:gen | parsers addAll: (gen getParsers: aList first)].
	
	parsers do: [ :parser |
		|res|
		res:= [parser parse:(aList first)] valueWithin:150 milliSeconds onTimeout: (#failure). 
		parserEltList add:(parser->res)].
	
	parserEltList removeAllSuchThat: [ :elt |
		(elt value isPetitFailure )].
	parserEltList removeAllSuchThat: [ :elt |
		(elt value = #failure) ].
	
	"ordering"
	parserEltList:= (parserEltList sorted: [ :eltA :eltB | (eltA value allChildrenWeight > eltB value allChildrenWeight)]).
	(parserEltList size >50)
	ifTrue: [	parserEltList:= parserEltList first:50  ].
			
	"recreate the parsers which are needed"
						
	"now proceed as usual, take the whole set and parse stuff with the remaining parsers"
	aList do: [ :elt |
		subResults:= OrderedCollection new.
		finalSubResults:= OrderedCollection new.
		parserEltList do: [ :parser |
			subResults add:([ (parser key parse:elt)] valueWithin: 2000 milliSeconds 			onTimeout:#failure)].
					
			results add:subResults.		].	
						
			
			
			"
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
							(res isEmpty)
							ifFalse:[
								finalSubResults add: res first]]]
					ifFalse: [ 
						(res isKindOf: Node)
							ifTrue:[finalSubResults add:(res) ].]

				].

		
		results add: finalSubResults.				
							]."

		^results