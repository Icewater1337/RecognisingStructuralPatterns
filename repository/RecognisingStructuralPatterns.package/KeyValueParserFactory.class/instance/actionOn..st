generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			addChild: e third ;
			name: e first contents;
			parserFactory: self;
			weight: 3;
			yourself
	]