AST
xmlElement
	^ super xmlElement ==>[:elt | 
		(Element new
			name: elt first second;
			children: elt second)
			yourself]
		