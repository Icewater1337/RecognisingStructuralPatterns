as yet unclassified
testDelimiters
	|string argsCreator result|
	string:= '"jkhsfu  hashabjb> () , ahsjdk. ; "'.
	

argsCreator := (GeneratorArgumentsCreator new)
	input: string;
	yourself.
	
	result:= argsCreator delimiters.
	
	self assert: result size equals:3.