as yet unclassified
testNestedTag
	| beginEnd |
	beginEnd := PPDelegateParser new.
	generator element: (beginEnd) /NilGenerator whatever.
	parser := generator generateParser.
	beginEnd setParser: parser.
	
	self assert: parser parse: '\begin{random}
		\begin{rundim}
		hhh
		\end{rundim}
	\end{random}'.	
		self assert: result children size equals: 1.
		self assert: result children first isKindOf:Element.
	