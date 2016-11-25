as yet unclassified
testString1
	self parse:'"this is a string"' rule:#string1.
	self parse:'"this is also a string """' rule:#string1.
	self parse:'" this is \" also a string"' rule:#string1.
	self parse:'"this is\" a string "" with some stuff in it"'rule:#string1.
	self assert: (result isKindOf: RawText)