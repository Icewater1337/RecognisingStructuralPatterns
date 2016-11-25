AST
valueTag
	^super valueTag ==> [ :elt | (
		Element new
			addChild: elt)
			yourself ]
	