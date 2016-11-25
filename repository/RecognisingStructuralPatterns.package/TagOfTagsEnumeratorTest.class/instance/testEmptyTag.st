as yet unclassified
testEmptyTag
	self assertEnumeration: #tag anyParses: '<a><\a>'.
	self assertEnumeration: #tag anyParses: '[a][\a]'
