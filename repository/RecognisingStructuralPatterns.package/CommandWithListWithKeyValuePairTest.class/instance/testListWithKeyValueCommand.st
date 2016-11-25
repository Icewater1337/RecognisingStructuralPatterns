as yet unclassified
testListWithKeyValueCommand
	|parsers|
	parsers := (enumerator productionNamed: #command) enumerate.
	
"	self assertEnumeration: #command anyParses: 'asldfj;asdkjfl;'"
	self assert: parsers anySatisfy: [ :parser  | parser matches: 'random("a":b",
		"c":"d")' ].
	self assert: parsers noneSatisfy: [ :parser  | parser matches: 'random("a";b",
		"c";"d")' ].