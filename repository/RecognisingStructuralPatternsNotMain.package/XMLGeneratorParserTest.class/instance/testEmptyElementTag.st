as yet unclassified
testEmptyElementTag
	self parse:'< tag/>'rule:#emptyElementTag.
	self fail:'< tag > tag </tag>'rule:#emptyElementTag.
	self fail:'<InvalidTag>' rule:#emptyElementTag.