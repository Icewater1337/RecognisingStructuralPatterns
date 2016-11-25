generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			children: e fourth ;
			name: e second;
			yourself
			
	]