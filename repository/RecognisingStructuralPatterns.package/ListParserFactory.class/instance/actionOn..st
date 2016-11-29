generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			children: e second;
			name: e first;
			parserFactory: self;
			yourself
			
	
	]