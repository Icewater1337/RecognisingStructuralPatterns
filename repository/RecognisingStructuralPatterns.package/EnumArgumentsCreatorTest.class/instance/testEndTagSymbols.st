as yet unclassified
testEndTagSymbols
	|string argsCreator result|
	string:= '?=!/\jkhsfu  hashabjb> () , ahsjdk. ; "'.
	

argsCreator := (EnumArgumentsCreator new)
	input: string;
	yourself.
	
	result:= argsCreator endTagSymbols.
	
	self assert: result size equals:5.