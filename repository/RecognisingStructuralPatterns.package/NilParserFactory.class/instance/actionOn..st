generating
actionOn: parser
	^ parser ==> [ :e | 
		RawText new
			contents: e inputValue;
			parserFactory: self;
			isSea:true;
			weight: 0.2;
			yourself
	]