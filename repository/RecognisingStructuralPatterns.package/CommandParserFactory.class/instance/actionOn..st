generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			children: e second;
			name: e first contents;
			parserFactory: self;
			weight: 2;
			yourself
	]