as yet unclassified
run
	^super run ==> [ :elt |
		(Element new )
		children: elt;
		name: '__ROOT__';
		yourself]