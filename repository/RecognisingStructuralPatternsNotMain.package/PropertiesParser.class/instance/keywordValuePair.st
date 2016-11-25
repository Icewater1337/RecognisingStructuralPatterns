AST
keywordValuePair
	 ^super keywordValuePair ==>[:elt | 
		(Element new)
			name: elt second;
			addChild: elt fourth]
		
	"addChild here, because returntype of keyword valuePair is not a collection, it has to be a collection of 1 element."