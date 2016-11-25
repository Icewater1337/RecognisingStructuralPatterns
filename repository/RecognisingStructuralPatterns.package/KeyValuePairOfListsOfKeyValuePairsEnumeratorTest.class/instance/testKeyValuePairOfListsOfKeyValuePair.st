as yet unclassified
testKeyValuePairOfListsOfKeyValuePair
|parsers|
	parsers := (enumerator productionNamed: #keyValuePair) enumerate.
	
	
	self assertEnumeration: #keyValuePair anyParses: '"foo":("bar1":"foo","bar2","hoo":"hee")'.