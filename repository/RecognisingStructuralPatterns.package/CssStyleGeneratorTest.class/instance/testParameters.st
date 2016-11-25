tests
testParameters
	generator beginBlock: ${ asParser.
	generator endBlock: $} asParser.
	generator lineDelimiter: $; asParser.
	parser := generator generateParser.
	
	self assert: parser parse: '.center .random {
	margin: auto;
	width: 60%;
	padding:10px;
	}'.