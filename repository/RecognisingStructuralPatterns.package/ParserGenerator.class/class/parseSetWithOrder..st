parsing
parseSetWithOrder: aSet	
	|parsers generators subResults results finalSubResults |
	results:= OrderedCollection new.
	subResults:= OrderedCollection new.
	"build parsers from the first element of the set, which is supposed to be the shortest. Then reuse them"
	generators:= self getBruteForceGeneratorSubclasses.
	parsers:= OrderedCollection new.
	
	generators do:[:gen | parsers addAll: (gen getParsers: aSet first)].
	
	"not 100% sure about this, can be done better?"

		parsers removeAllSuchThat: [ :parser | 
			([ (parser parse:(aSet first)) isPetitFailure		 ] valueWithin: 300 milliSeconds onTimeout:(true)) ].
				
	"try to order, have to redo this, absolutely. This is broken ugly :S "		
	parsers:= (parsers sorted: [ :eltA :eltB | 
		|a b|
		
		a:= (eltA parse: aSet first).
		b:= (eltB parse: (aSet first)).
		
		(a isKindOf:Collection)
		ifTrue:[a:= (Element new)
			name:'__ROOT__';
			weight:0;
			children: a;
			yourself]
		ifFalse:[a:= (Element new)
			name:'__ROOT__';
			weight:0;
			addChild: a;
			yourself].
		
		(b isKindOf:Collection)
		ifTrue:[b:= (Element new)
			name:'__ROOT__';
			weight:0;
			children: b;
			yourself]
		ifFalse:[b:= (Element new)
			name:'__ROOT__';
			weight:0;
			addChild: b;
			yourself].
		
		 a allChildrenWeight > b	allChildrenWeight ] ).
	
	parsers:= parsers first:60.
	
						
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