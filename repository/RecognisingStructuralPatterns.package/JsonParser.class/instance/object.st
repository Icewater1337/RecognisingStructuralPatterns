AST
object
	^ super object ==> [ :elt | (
		Element new)
			name:'An Element';
			children: elt;
			yourself ]