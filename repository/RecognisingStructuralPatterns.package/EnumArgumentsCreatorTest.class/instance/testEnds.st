as yet unclassified
testEnds
	|string argsCreator result|
	string:= '"jkhsfu  hashabjb> () , ahsjdk. ; "'.
	

argsCreator := (EnumArgumentsCreator new)
	input: string;
	yourself.
	
	result:= argsCreator ends.
	
	self assert: result size equals:3.