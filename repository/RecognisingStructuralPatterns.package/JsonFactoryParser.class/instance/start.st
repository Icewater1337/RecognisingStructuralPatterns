accessing
start
	^jsonElt ==> [ :e | 
		(Element new)
			children: e  ;
			name: '__Root__';
			yourself
	]