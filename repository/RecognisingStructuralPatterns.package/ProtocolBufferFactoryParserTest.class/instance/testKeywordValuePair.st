tests
testKeywordValuePair
	self parse:'hallo=velo' rule:#keyValuePair.
	self parse:'hello op bool =2' rule:#keyValuePair.
