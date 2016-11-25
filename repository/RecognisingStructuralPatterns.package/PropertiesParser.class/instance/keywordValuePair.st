AST
keywordValuePair
	 ^super keywordValuePair ==>[:elt | 
		(Element new)
			name: elt second;
			addChild: elt fourth]