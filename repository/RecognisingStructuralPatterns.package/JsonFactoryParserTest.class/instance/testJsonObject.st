as yet unclassified
testJsonObject
	self parse:'{"firstName":"John", "lastName":"Doe"}' rule: #jsonObject.
	self parse:'{"random":"random"}' rule:#jsonObject.
	self parse:'{"random":{"foo":"bar"}}'rule:#jsonObject.