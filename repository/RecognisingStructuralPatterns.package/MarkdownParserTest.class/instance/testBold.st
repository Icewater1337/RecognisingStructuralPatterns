as yet unclassified
testBold
	self parse:'**Bold**' rule:#bold.
	self parse:'__Bold__' rule:#bold.
	self fail:'**Bold_*' rule:#bold.
	