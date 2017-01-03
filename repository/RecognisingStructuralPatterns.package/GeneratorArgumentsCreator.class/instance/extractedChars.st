as yet unclassified
extractedChars
	^
	 extractedChars isEmpty
	ifTrue:[	self extractedChars: ((SpecialCharExtractor new) parse: self input).
			^extractedChars
	]
ifFalse:[^ extractedChars]