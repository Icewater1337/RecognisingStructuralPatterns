as yet unclassified
readFiles: fileLocation
	|filesFolder files filesContents sortedFiles workingStore|
	filesContents:= OrderedCollection new.
	sortedFiles:= OrderedCollection new.


	"no idea how to solve this. dirty hack. "
	workingStore:= FileSystem disk workingDirectory.
	filesFolder:= FileSystem disk changeDirectory: fileLocation.
	files:= filesFolder workingDirectory files.
	
	files do: [ :file |
		filesContents add:(file contents)].
	
	sortedFiles:= self sortFilesByLength: filesContents.
	FileSystem disk changeDirectory: workingStore.
	^sortedFiles.
	
	
	
	