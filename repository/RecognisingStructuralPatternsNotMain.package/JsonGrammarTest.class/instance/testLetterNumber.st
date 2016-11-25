as yet unclassified
testLetterNumber
	self parse:'"hallo"' rule:#letterNumber.
	self parse:'"123"' rule:#letterNumber.
	self parse:'"true"' rule:#letterNumber.