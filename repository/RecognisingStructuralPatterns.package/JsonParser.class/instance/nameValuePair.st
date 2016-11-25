AST
nameValuePair
	^super nameValuePair ==> [ :elt | (
		Element new
			name: elt first name;
			addChild: elt third )
			yourself ]
	