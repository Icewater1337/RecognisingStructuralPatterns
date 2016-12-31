parsing
parseSetWithOrder: aSet	
	|parsers generators subResults results finalSubResults solutionsOfFirst solutionsOfFirstTmp|
	results:= OrderedCollection new.
	subResults:= OrderedCollection new.
	solutionsOfFirst:= OrderedCollection new.
	solutionsOfFirstTmp:= OrderedCollection new.
			
	"build parsers from the first element of the set, which is supposed to be the shortest. Then reuse them"
	generators:= self getBruteForceGeneratorSubclasses.
	parsers:= OrderedCollection new.
	
	generators do:[:gen | parsers addAll: (gen getParsers: aSet first)].
	
	parsers do: [ :parser |
		|res|
		res:= [parser parse:(aSet first)] valueWithin:150 milliSeconds onTimeout: (#failure).
		solutionsOfFirstTmp add:res ].
	
	solutionsOfFirstTmp removeAllSuchThat: [ :elt |
		(elt isPetitFailure)].
	
	"elementarize them. Because when you get returned an array of Elements ( because of nonEMpty star). Have to make this better ( like actionOn??)"
	"sort them"
	solutionsOfFirstTmp do: [ :elt|
		(elt isKindOf: Array "ffuuugly")
		ifTrue:[solutionsOfFirst add:((Element new)
							name:'__ROOT__';
							children: elt;
							weight:0;
							parserFactory: elt first parserFactory;
							yourself)]
						
		ifFalse:[solutionsOfFirst add: elt]
		 ].
	
	solutionsOfFirst removeAllSuchThat: [ :elt | (elt isKindOf: Node) not ].
	solutionsOfFirst:= (solutionsOfFirst sorted: [ :eltA :eltB | (eltA allChildrenWeight > eltB allChildrenWeight)]).
	(solutionsOfFirst size >50)
	ifTrue: [	solutionsOfFirst:= solutionsOfFirst first:50  ].
	
	"recreate the parsers which are needed"
	parsers:= OrderedCollection new.
	solutionsOfFirst do: [ :elt |
		parsers add: (elt parserFactory generateParser nonEmpty star) ].

						
	"now proceed as usual, take the whole set and parse stuff with the remaining parsers"
	aSet do: [ :elt |
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
						ifFalse:[finalSubResults add: res first]]
					ifFalse: [ 
						(res isKindOf: Node)
							ifTrue:[finalSubResults add:(res) ].]

				].

		
		results add: finalSubResults.				
							].
			
		^results