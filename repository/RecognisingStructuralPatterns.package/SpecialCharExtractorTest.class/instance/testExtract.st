as yet unclassified
testExtract
	| test| 
	
	test:= '"jkhsfu  hashabjb , ahsjdk. ; "'.

	self parse: test.
	self assert: result size equals:4.