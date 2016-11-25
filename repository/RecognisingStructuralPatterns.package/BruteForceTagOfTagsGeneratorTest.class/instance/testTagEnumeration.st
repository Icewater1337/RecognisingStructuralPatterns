as yet unclassified
testTagEnumeration
|parsers|
	parsers := (enumerator productionNamed: #tag) enumerate.
	
	self assert: parsers size equals:4