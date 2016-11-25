tests
testDefaultStringWithEscape
	parser := generator generateParser.
	
	self assert: parser parse: '"fo\"o"'.
	self assert: parser parse: '"fo""o"'.