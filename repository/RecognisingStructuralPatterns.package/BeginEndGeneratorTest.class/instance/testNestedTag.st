as yet unclassified
testNestedTag
	generator element: (generator parserReference) /NilGenerator whatever.
	parser := generator generateParser.
	
	self assert: parser parse: '\begin{random}
		\begin{rundim}
		hhh
		\end{rundim}
	\end{random}'.	
		self assert: result children size equals: 1.
		self assert: result children first isKindOf:Element.
	