as yet unclassified
begins
 | fixedBegins extrChars retarr|
	fixedBegins :=  FixedListOfKnownItems fixedBegins.
	extrChars:= self extractedChars.
	
	retarr:= OrderedCollection new.
	
	extrChars do: [ :char |
		 	(fixedBegins indexOf:( char)) == 0 ifFalse: [retarr add: char]].
		 
	^ retarr
	
	