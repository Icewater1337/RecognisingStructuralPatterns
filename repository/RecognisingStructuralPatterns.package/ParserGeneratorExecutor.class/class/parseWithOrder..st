parsing
parseWithOrder: input
	|parsedResults|
	
	parsedResults := OrderedCollection new.

	
	parsedResults := self parse: input.
	
	^	 (parsedResults sorted: [ :eltA :eltB | 
			|childWeightA childWeightB|
			childWeightA:= eltA allChildrenWeight.
			childWeightB:= eltB allChildrenWeight.
			"(eltA allChildrenSeas < eltB allChildrenSeas)
			ifTrue:[childWeightA:= childWeightA + 5]
			ifFalse:[childWeightB:= childWeightB +5]."
			(childWeightA> childWeightB)]).
	
	"& (eltA allChildrenSeas < eltB allChildrenSeas)"

