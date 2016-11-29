generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			children: e second;
			name: e first contents;
			parserFactory: self;
			yourself
	]