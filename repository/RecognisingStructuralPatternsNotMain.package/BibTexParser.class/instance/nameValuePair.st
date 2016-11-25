as yet unclassified
nameValuePair
	^super nameValuePair ==> [ :elt |
		(RawText new) 
			name: elt first;
			yourself ]