as yet unclassified
testString2
	self parse:'''this is " ''''a string''' rule:#string2.
	self parse:'''this is also a string ""''' rule:#string2.
	self parse:''' this is \'' also a string''' rule:#string2.
	self parse:'''this is \'' a string '''' with some stuff in it'''rule:#string2.
	self assert: (result isKindOf: RawText)