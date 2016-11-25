as yet unclassified
testKeyValuePair
|parsers|
	parsers := (enumerator productionNamed: #keyValuePair) enumerate.
		
	self assert: parsers anySatisfy: [ :parser  | parser matches: '"foo":"bar"' ].