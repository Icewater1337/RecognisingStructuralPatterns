generating
actionOn: parser
	^ parser ==> [ :e | 
		RawText new
			contents: e inputValue;
			parserFactory: self;
			weight: 0.2;
			yourself
	]