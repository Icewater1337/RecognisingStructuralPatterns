generating
actionOn: parser
	^ parser ==> [ :e | 
		(RawText new)
			contents: e second inputValue;
			parserFactory:self;
			weight:
				((e second inputValue size < 1)
					ifTrue:[0]
					ifFalse:[2]);
			yourself
			
	
	]