as yet unclassified
testTag
|parsers|
	parsers := (enumerator productionNamed: #tag) enumerate.
	
	self assertEnumeration: #tag anyParses:'<a><\a>'.
	self assertEnumeration: #tag anyParses: '<a><b><\b><\a>'.
	self assertEnumeration: #tag  anyParses: '[a][\a]'.
	self assertEnumeration: #tag  anyParses: '[a>[\a>'
