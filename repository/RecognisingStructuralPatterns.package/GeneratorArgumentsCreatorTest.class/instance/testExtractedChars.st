as yet unclassified
testExtractedChars
	|string argsCreator result|
	string:= '"jkhsfu  hashabjb> () , ahsjdk. ; "'.
	

argsCreator := (GeneratorArgumentsCreator new)
	input: string;
	yourself.
	
	result:= argsCreator extractedChars.
	
	self assert: result size equals:7.