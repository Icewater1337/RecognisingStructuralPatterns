AST
array
	^super array==>[ :elt | 
		(
		Element new)
			name: 'An Array';
			children: elt;
			yourself]
		
	"returntype of array is an ordred collection."