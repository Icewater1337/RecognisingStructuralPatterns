generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			children: e third;
			name: e first;
			yourself
	]