as yet unclassified
testParameters
	| string |
	string := StringParserFactory doubleQuoteString.
	
	generator begin: $[ asParser token.
	generator end: $] asParser.
	generator delimiter: $, asParser.
	generator element: string.
	parser := generator generateParser.
	
	self assert: parser parse: '["123","asd","sd","object"]'.