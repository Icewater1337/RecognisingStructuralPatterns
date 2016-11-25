AST
nameValuePair
	^super nameValuePair ==> [ :elt | (
		Element new
			name: elt first second;
			addChild: elt third )
			yourself ]
	