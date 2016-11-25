as yet unclassified
start
	^command nonEmpty star ==> [ :e | 
		(Element new)
			children: e  ;
			name: '__Root__';
			yourself
	]