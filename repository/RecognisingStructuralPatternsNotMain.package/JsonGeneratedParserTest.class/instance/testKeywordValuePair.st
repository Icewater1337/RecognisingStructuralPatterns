as yet unclassified
testKeywordValuePair
	self parse:'"hallo":"velo"' rule:#keywordValuePair.
	self parse:'"employees":[
    {"firstName":"John", "lastName":"Doe"}, 
    {"firstName":"Anna", "lastName":"Smith"}
]'rule: #keywordValuePair.
	self parse:'"employees":["a","b","c"]' rule:#keywordValuePair.
