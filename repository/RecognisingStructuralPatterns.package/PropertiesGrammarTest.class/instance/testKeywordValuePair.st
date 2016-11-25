as yet unclassified
testKeywordValuePair
	self parse:'pi  = 3.1251235' rule:#keywordValuePair.
	self parse:'piasd213= 123.213123' rule:#keywordValuePair.
	self parse:'stuff = hmureuh stuff 'rule:#keywordValuePair.