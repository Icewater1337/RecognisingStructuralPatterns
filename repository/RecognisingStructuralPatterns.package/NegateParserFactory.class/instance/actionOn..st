generating
actionOn: parser
 ^ parser  ==> [ :e |
		(RawText new)
			contents: e trim;
			weight: 0.2;
			yourself]