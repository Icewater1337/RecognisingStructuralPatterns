as yet unclassified
testKeyValuePair
	self assertEnumeration: #keyValuePair anyParses: '"foo":()'.
	self assertEnumeration: #keyValuePair anyParses: '"foo":("foobar":())'.	
	
	self assertEnumeration: #keyValuePair anyParses: '"foo":"bar"'.
