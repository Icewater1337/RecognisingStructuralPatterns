as yet unclassified
testArray
	self parse:'[
    {"firstName":"John", "lastName":"Doe"}, 
    {"firstName":"Anna", "lastName":"Smith"}, 
    {"firstName":"Peter","lastName":"Jones"}
]' rule: #array.
	self parse:'["asd","asdffg","asdfgfyx"]' rule: #array.