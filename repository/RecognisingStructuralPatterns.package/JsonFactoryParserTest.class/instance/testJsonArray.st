as yet unclassified
testJsonArray
		self parse:'[
    {"firstName":"John", "lastName":"Doe"}, 
    {"firstName":"Anna", "lastName":"Smith"}, 
    {"firstName":"Peter","lastName":"Jones", "ueli":false}
]' rule: #jsonArray.
	self parse:'["asd","asdffg","asdfgfyx"]' rule: #jsonArray.