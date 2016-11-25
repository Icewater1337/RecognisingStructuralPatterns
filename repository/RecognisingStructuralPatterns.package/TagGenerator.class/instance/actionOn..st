generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			addChild: e fourth ;
			name: e second;
			yourself
			
	]