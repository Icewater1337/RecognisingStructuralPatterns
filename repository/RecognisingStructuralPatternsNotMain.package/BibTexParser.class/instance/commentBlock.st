as yet unclassified
commentBlock
	^super commentBlock ==> [ :elt |
		(RawText new) 
			name:'A Comment';
			yourself ]