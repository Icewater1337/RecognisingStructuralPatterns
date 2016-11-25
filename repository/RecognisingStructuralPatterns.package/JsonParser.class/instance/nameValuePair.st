AST
nameValuePair
	^super nameValuePair ==> [ :elt | (
		Element new
			name: elt first second;
			children: elt third )
			yourself ]
	