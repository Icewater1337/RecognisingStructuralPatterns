AST
emptyElementTag
	^ super emptyElementTag ==>[:elt | 
		(Element new
		name: elt second)
		yourself]