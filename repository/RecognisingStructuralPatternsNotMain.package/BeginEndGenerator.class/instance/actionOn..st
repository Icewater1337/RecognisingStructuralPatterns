generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			addChild: e third ;
			name: e second first contents;
			yourself
			
	]