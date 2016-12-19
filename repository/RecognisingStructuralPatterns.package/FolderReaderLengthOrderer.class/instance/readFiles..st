as yet unclassified
readFiles: fileLocation
	|filesFolder files filesContents sortedFiles|
	
	filesContents:= OrderedCollection new.
	sortedFiles:= OrderedCollection new.
	
	filesFolder:= FileSystem disk changeDirectory: fileLocation.
	
	files:= filesFolder workingDirectory files.
	
	files do: [ :file |
		filesContents add:(file contents)].
	
	sortedFiles:= self sortFilesByLength: filesContents.
	^sortedFiles.
	
	
	
	