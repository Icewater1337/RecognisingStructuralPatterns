tests
testParameters
	generator begins: $' asParser.
	generator end: $' asParser.
	generator escape: '\' asParser.
	parser := generator generateParser.
	
	self assert: parser parse: '''fo\''o'''.