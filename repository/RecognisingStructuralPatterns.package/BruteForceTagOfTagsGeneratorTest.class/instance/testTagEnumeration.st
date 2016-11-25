tests
testTagEnumeration
|parsers|
	parsers := (enumerator productionNamed: #tag) generate.
	
	self assert: parsers size equals:9