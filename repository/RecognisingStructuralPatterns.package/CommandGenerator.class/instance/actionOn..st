generating
actionOn: parser
	^ parser ==> [ :e | 
		(Element new)
			children: e second;
			name: e first contents; "e first inputValue ( because it will be a PPToken)"
			"position: e first start"
			yourself
	]