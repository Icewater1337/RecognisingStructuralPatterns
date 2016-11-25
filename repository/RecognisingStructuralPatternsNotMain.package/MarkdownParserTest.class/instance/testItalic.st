as yet unclassified
testItalic
	self parse:'*Bold*' rule:#italic.
	self parse:'_Bold_' rule:#italic.
	self fail:'*Bold_' rule:#italic.
	