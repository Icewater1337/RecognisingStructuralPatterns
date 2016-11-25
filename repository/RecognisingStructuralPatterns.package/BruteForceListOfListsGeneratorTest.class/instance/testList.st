tests
testList
	
	self assertEnumeration: #list anyParses: '((),())'.
	self assertEnumeration: #list anyParses: '[[],[[]]]'
