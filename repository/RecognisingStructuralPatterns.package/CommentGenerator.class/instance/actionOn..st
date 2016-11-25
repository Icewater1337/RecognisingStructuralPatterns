generating
actionOn: parser
	^ parser ==> [ :e | 
		(RawText new)
			contents: e second;
			yourself
	]