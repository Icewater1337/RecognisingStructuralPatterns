as yet unclassified
testList
	self parse:'{foo=bar, a=1, 2=c}' rule:#list.
	self parse:'{foo, bar=bar}' rule: #list.
	