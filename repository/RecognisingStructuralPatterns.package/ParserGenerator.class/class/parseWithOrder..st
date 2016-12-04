parsing
parseWithOrder: input
	|orderList parsedResults|
	
	orderList := OrderedCollection new.
	parsedResults := OrderedCollection new.

	
	parsedResults := self parse: input.
	
	^	 (parsedResults sorted: [ :eltA :eltB | eltA allChildrenWeight > eltB allChildrenWeight]).
	
	

