as yet unclassified
testBegins
	|string argsCreator result|
	string:= '"jkhsfu  hashabjb> () , ahsjdk. ; "'.
	

argsCreator := (GeneratorArgumentsCreator new)
	input: string;
	yourself.
	
	result:= argsCreator begins.
	
	self assert: result size equals:2.