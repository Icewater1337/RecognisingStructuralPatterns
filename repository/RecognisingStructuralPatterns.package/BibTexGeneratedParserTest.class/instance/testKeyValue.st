as yet unclassified
testKeyValue
	self parse:'foo=bar' rule:#keyValue.
	self parse:'1=bar' rule:#keyValue.
	self parse:'bar=1' rule:#keyValue.
	self parse:'a="foo"' rule:#keyValue.
	self fail:'a -b' rule:#keyValue.