as yet unclassified
testDefaultBeginEnd
	parser := generator generateParser.
	
	self assert: parser parse: '\begin{random} 
		random
	\end{random}'.
	self assert: result isKindOf: Element.
	self assert: result children size equals: 1.
	self assert:(result children first isKindOf: RawText).