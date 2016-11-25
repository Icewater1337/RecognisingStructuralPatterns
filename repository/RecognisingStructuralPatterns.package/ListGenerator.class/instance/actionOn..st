generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			children: e ;
			yourself
			
	
	]