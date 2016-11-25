generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			addChild: e third ;
			yourself
			
	]