parsing
parseWithOrder: input
	|parsedResults|
	
	parsedResults := OrderedCollection new.

	
	parsedResults := self parse: input.
	
	^	 (parsedResults sorted: [ :eltA :eltB | (eltA allChildrenWeight > eltB allChildrenWeight) & (eltA allChildrenSeas < eltB allChildrenSeas)]).
	
	

