as yet unclassified
validateFilesInFolder: folderPath
	| folders files wd solutions folderReader|
	folderReader:= FolderReaderLengthOrderer new.
	solutions:= OrderedCollection new.
	
	wd:= (FileSystem disk changeDirectory: folderPath) workingDirectory.
	
	folders:= wd 	children.
	
	folders do: [ :folder |
		|fileType correctParser|
		
		files:= FolderReaderLengthOrderer new readFiles: folder.
			
		fileType:= ((folder files at:1 )path) at: ((folder files at:1 )path)size.  "why does last not work?"
		
		"get the correct parser"
		(fileType beginsWith:'css')
			ifTrue:[correctParser:=CssFactoryParser new. ].
		(fileType beginsWith:'html')
			ifTrue:[correctParser:= XMLFactoryParser new.].
		(fileType beginsWith:'json')
			ifTrue:[JsonFactoryParser new.].
		(fileType beginsWith:'protocolBuffer')
			ifTrue:[ProtocolBufferFactoryParser new.].
		(fileType beginsWith:'xml')
			ifTrue:[correctParser:= XMLFactoryParser new.].
			
		solutions add: (ListValidator new validate: files correctParser: correctParser).
			
		 ].
	
	^solutions.