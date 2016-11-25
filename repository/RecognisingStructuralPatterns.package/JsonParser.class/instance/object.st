AST
object
	^ super object ==> [ :elt | (
		Element new)
			name:'An Element';
			children: elt;
			yourself ]
		
	"returntype of object is an ordred collection."