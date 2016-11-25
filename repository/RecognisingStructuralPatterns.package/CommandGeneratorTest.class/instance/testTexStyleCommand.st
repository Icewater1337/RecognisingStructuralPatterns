tests
testTexStyleCommand
	| stringGenerator |
	stringGenerator:= (StringGenerator new).
	stringGenerator begin:$( asParser.
	stringGenerator end:$) asParser.
		
	generator:= CommandGenerator new.
	generator key:NilGenerator new generateParser.
	generator arguments: (stringGenerator generateParser).
	parser := generator generateParser.
	
	self assert: parser parse: '\key(par1)(par2)'.
	self assert: (result children allSatisfy: [:e | e isKindOf: RawText]).
	self assert: result children first  contents equals:'par1'.
	self assert: result children second contents equals:'par2'.