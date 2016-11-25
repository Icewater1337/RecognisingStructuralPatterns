as yet unclassified
testListWithKeyValueCommand
	
	self assertEnumeration: #command anyParses: 'random("a":"b",
		"c":"d")'.
		
	self assertEnumeration: #command nooneParses: 'random("a",b";
		"c":"d")'.
	