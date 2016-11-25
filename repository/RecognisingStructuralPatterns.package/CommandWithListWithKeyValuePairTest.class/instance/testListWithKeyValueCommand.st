as yet unclassified
testListWithKeyValueCommand
	|parsers|
	parsers := (enumerator productionNamed: #list) enumerate.
	
	self assert: parsers anySatisfy: [ :parser  | parser matches: '@random("a":b",
		"c":"d")' ].