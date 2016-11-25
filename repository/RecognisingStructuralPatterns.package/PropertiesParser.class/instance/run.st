AST
run
	^super run ==> [ :elt |
		(Element new )
		children: elt;
		yourself]