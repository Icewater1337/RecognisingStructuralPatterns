as yet unclassified
testTag
	
	self assertEnumeration: #tag anyParses:'<a><\a>'.
	self assertEnumeration: #tag anyParses: '<a><b><\b><\a>'.
	self assertEnumeration: #tag anyParses: '[a][\a]'.
	self assertEnumeration: #tag anyParses: '[a>[\a>'
