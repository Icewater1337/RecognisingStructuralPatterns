AST
valueTag
	^super valueTag ==> [ :elt | (
		Element new
			name:'valueTag';
			addChild: elt)
			yourself ]
	