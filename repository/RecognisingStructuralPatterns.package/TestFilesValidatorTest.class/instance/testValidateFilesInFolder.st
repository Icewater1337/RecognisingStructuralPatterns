tests
testValidateFilesInFolder
	|validator result result1 result2 folder|
	"self halt:'adjust folder first, before running this test'."
	validator := TestFilesValidator new.
	folder:= (FileSystem disk changeDirectory: (SmalltalkImage current imageDirectory absolutePath),'\testfiles') workingDirectory absolutePath.
	
	result:= validator validateFilesInFolder:folder.
	result1:= (result at:1) at:1.
	result2:= (result at:2) at:1.
	self assert: result1 precision closeTo:1.
	self assert: result1 f1score closeTo:1.
	self assert: (result1 node) children first name equals:'a'.
	self assert: (result1 node) children first children first contents equals:'b'.
	
	self assert: result2 precision closeTo:1.
	self assert: result2 f1score closeTo:1.
	self assert: (result2 node) children first name equals:'.hello'.
	