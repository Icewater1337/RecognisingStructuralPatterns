as yet unclassified
testParameters
	| string |
	string := StringGenerator doubleQuoteString.
	
	generator begin: $[ asParser.
	generator end: $] asParser.
	generator delimiter: $, asParser.
	generator element: string.
	parser := generator generate.
	
	self assert: parser parse: '["123","asd","sd","object"]'.