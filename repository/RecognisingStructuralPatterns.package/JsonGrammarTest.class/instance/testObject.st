as yet unclassified
testObject
	self parse:'{"firstName":"John", "lastName":"Doe"}' rule: #object.
	self parse:'{"random":"random"}' rule:#object