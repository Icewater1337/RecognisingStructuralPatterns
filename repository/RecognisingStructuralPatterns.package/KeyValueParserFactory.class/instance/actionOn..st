generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			addChild: e third ;
			name: e first contents;
			parserFactory: self;
			yourself
	]