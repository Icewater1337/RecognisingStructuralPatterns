as yet unclassified
testDefaultList
	parser := generator generateParser.
	
	self assert: parser parse: '[ 123, "asd" , {sd}, object]'.