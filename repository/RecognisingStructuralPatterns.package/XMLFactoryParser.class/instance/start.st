accessing
start
	^(openFileTag trim/docTypeTag trim/ xmlElement)  star ==> [ :e | 
		
		(e size > 1) 
		ifTrue: [ 
			(Element new)
				children: e ;
				name: '__ROOT__';
				weight:0;
				yourself
			]
		ifFalse:[
			e first] ]