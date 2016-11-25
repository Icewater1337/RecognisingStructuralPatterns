as yet unclassified
testEmptyElementTag
	self parse:'<emptyElement/>' rule:#emptyElementTag.
	self parse:'<emptyElement random="swag"/>' rule:#emptyElementTag.