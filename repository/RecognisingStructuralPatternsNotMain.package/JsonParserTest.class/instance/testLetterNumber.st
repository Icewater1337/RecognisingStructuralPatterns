as yet unclassified
testLetterNumber
	self parse:'"John"' rule:#letterNumber.
	self assert:(result isKindOf: RawText).