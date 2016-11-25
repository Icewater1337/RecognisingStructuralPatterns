as yet unclassified
actionOn: parser
	^ parser ==> [ :e | 
		RawText new
			contents: e;
			yourself
	]