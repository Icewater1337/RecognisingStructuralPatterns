as yet unclassified
testList
	self assertEnumeration: #list anyParses: '()'.
	self assertEnumeration: #list anyParses: '("foo","bar")'.
	self assertEnumeration: #list anyParses: '("foo",	"foobar":())'