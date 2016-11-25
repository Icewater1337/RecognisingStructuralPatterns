AST
valueTag
	^super valueTag ==> [ :elt | (
		Element new
			children: elt)
			yourself ]
	