AST
emptyElementTag
	^ super emptyElementTag ==> [ :e | (EmptyElement new
		name: e second )]