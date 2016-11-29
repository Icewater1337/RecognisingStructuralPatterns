parsing
parseFiles
	|workingDir fileDir files parsers|
	
	workingDir:= FileSystem workingDirectory.
	fileDir:= workingDir resolvePath:'RecognisingStructuralPatterns/exampleFiles'.
	files:= (fileDir children) collect: [ :child | child asFileReference contents. ].
	parsers:= OrderedCollection new.
	
	"not sure what to do here. Try to parse all the files and see if any parser matches?
	return results for each file?"
	files do: [ :file |
		ParserGenerator parse: file. 
		 ]