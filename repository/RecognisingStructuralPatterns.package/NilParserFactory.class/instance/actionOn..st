generating
actionOn: parser
	^ parser ==> [ :e | 
		RawText new
			contents: e inputValue;
			isSea: true;
			yourself
	]