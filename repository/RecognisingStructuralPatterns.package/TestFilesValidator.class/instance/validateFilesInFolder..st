as yet unclassified
validateFilesInFolder: folderPath
	| folders files wd solutions|
	
	solutions:= OrderedCollection new.
	wd:= (FileSystem disk changeDirectory: folderPath) workingDirectory.
	folders:= wd 	children.
	
	folders do: [ :folder |
		|fileType correctParser|
		files:= FolderReaderLengthOrderer new readFiles: folder.
		fileType:= folder path.
		
		"get the correct parser"
		(fileType equals:'css')
			ifTrue:[correctParser:=CssFactoryParser new. ].
		(fileType equals:'html')
			ifTrue:[correctParser:= XMLFactoryParser new.].
		(fileType equals:'json')
			ifTrue:[JsonFactoryParser new.].
		(fileType equals:'protocolBuffer')
			ifTrue:[].
		(fileType equals:'xml')
			ifTrue:[correctParser:= XMLFactoryParser new.].
			
		solutions add: (SetValidator new validate: files correctParser: correctParser).
			
		 ].
	
	^solutions.