as yet unclassified
testParameters
	| nilG |
	nilG := NilGenerator whatever.
	
	generator beginKw: '\begin' asParser.
	generator endKw: '\end' asParser.
	generator element: nilG.
	generator beginBlock: ${ asParser.
	generator endBlock: $} asParser.
	parser := generator generateParser.
	
	
	
	self assert: parser parse: '\begin{random} 
		random
	\end{random}'.
	self assert: result isKindOf: Element.