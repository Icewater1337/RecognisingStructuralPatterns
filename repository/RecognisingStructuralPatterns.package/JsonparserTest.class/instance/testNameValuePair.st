as yet unclassified
testNameValuePair
	self parse:'"hallo":"velo"' rule:#nameValuePair.
	self parse:'"employees":[
    {"firstName":"John", "lastName":"Doe"}, 
    {"firstName":"Anna", "lastName":"Smith"}
]'rule: #nameValuePair.
