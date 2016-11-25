AST
nameValuePair
	^super nameValuePair ==> [ :elt | (
		NameValuePairNode new
			name: elt first second;
			children: elt third )
			yourself ]
	