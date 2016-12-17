as yet unclassified
testOpenFileTag
	self parse:'<?xml openFile ?>' rule:#openFileTag.
	self fail:'<huhu> j </huhu>' rule:#openFileTag.
	self fail:'<hu>' rule:#openFileTag.