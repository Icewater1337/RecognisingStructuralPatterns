AST
array
	^super array ==>[ :elt | (
		Element new)
			name: 'An Array';
			children: elt; 
			yourself ]