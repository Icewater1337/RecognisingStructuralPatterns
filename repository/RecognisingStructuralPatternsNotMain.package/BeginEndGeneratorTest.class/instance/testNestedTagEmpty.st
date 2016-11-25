as yet unclassified
testNestedTagEmpty
	generator element: (generator parserReference) /NilGenerator whatever.
	parser := generator generateParser.
	
	self assert: parser parse: '\begin{random}
		\begin{rundim}
		\end{rundim}
	\end{random}'.	
		self assert: result children size equals: 1.
		self assert: result children first isKindOf:Element.
	