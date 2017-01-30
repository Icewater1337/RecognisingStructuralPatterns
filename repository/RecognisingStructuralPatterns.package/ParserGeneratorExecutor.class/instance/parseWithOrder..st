parsing
parseWithOrder: input
	|parsedResults|
	
	parsedResults := OrderedCollection new.

	
	parsedResults := self parse: input.
	
	^	 (parsedResults sorted: [ :eltA :eltB | 
			|childWeightA childWeightB|
			childWeightA:= eltA allChildrenWeight.
			childWeightB:= eltB allChildrenWeight.
			(childWeightA> childWeightB)]).
	