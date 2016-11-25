as yet unclassified
testDefaultSpecialVariable
	parser := generator generateParser.
	
	self assert: parser parse: '\random{param}'.
	self assert: parser fail:'\random[param}'.