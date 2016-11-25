as yet unclassified
bracketsElement
	^super bracketsElement ==> [  :elt |
		(RawText new) 
			name: elt second;
			yourself]