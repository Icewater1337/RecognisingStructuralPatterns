tests
testSortedByLength
	|orderer result files|
	orderer:= FolderReaderLengthOrderer new.
	files:= OrderedCollection new.
	


	files add:'<a>
		<b>c</b>
		<d>e</d>
	</a>'.
	files add:'<a>b</a>'.
	files add:'<a>
		<b>c</b>
	</a>'.
	
	result:= orderer sortFilesByLength:files.
	
	self assert: result first size = 8.
	self assert: result second size = 20.
	self assert: result third size = 31.