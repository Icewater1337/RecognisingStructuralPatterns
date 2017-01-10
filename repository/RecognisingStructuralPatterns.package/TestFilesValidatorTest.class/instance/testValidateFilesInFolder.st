tests
testValidateFilesInFolder
	|validator result result1 result2|
	"self halt:'adjust folder first, before running this test'."
	validator := TestFilesValidator new.
	result:= validator validateFilesInFolder:'C:\Users\icewater\bachelorarbeitGit\RecognisingStructuralPatterns\test\testfiles'.
	result1:= (result at:1) at:1.
	result2:= (result at:2) at:1.
	self assert: result1 precision closeTo:1.
	self assert: result1 f1score closeTo:1.
	self assert: (result1 node) name equals:'a'.
	self assert: (result1 node) children first contents equals:'b'.
	
	self assert: result2 precision closeTo:1.
	self assert: result2 f1score closeTo:1.
	self assert: (result2 node) name equals:'.hello'.
	