AST
object
	^ super object ==> [ :elt | (
		Element new)
			name:'An Object';
			children: elt;
			yourself ]
		
	"returntype of object is an ordred collection."