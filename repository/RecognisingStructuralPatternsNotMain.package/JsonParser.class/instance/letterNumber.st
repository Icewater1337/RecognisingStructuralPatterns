AST
letterNumber
	^super letterNumber ==> [ :elt | (
		RawText new
			name: elt second)
			yourself ]
	