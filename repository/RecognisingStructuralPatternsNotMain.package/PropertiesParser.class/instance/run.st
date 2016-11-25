AST
run
	^super run ==> [ :elt |
		(Element new )
		children: elt;
		name: '__ROOT__';
		yourself]
	

"do children: here, because the return type of run is already a collection"