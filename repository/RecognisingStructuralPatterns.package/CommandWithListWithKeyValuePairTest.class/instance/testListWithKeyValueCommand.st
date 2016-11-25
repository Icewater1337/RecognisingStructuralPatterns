as yet unclassified
testListWithKeyValueCommand
	
	| string |
	self assertEnumeration: #command anyParses: 'random("a":"b",
		"c":"d")'.
	
	string:= '#wrapper {
			width: 90%;
			max-width: 1100px;
			min-width: 800px;
			margin: 50px auto;
		}'.
		
	self assertEnumeration:#command anyParses:string.
	
	