as yet unclassified
testNameValuePair
	self parse:'author = "mr random",
'rule:#nameValuePair.
	self assert: (result isKindOf: RawText)