as yet unclassified
testDefaultEmptyBeginEnd
	parser := generator generateParser.
	
	self assert: parser parse: '\begin{random}
	\end{random}'.
	self assert: result isKindOf: Element.