as yet unclassified
testXMLElement
	self parse:'<a>h</a>' rule:#xmlElement.
	self assert: (result children first isKindOf: RawText).
	self assert: result children first contents equals:'h'.
	self fail:'<a>h<a>'rule:#xmlElement.
	self fail:'<a>h</b>'rule:#xmlElement.
	self parse:'<text data="Click Here" size="36" style="bold">h</text>' rule:#xmlElement.