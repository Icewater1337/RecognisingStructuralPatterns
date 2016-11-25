AST
array
	^super array==>[ :elt | 
		(
		Element new)
			name: 'An Array';
			children: elt]
		
	"returntype of array is an ordred collection."