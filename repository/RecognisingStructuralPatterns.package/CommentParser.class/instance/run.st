accessing
run
	^comment star 
	==> [ :elt |
		(Element new )
		children: elt;
		name: '__ROOT__';
		yourself]