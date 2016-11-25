AST
keywordValuePair
	 ^super keywordValuePair ==>[:elt | 
		(KeywordElement new
			name: elt first)
			yourself]