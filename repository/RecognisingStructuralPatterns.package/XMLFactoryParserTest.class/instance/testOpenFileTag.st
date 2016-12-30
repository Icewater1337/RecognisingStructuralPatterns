tests
testOpenFileTag
	self parse:'<?xml openFile ?>' rule:#openFileTag.
	self fail:'<huhu> j </huhu>' rule:#openFileTag.
	self fail:'<hu>' rule:#openFileTag.
	self parse:'<?xml version="1.0"?>' rule:#openFileTag.