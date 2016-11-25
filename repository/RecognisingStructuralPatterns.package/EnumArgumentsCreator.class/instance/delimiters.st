as yet unclassified
delimiters
 | fixedDelimiters extrChars retarr|
	fixedDelimiters :=  FixedListOfKnownItems fixedDelimiters.
	extrChars:= self extractedChars.
	
	retarr:= OrderedCollection new.
	
	extrChars do: [ :char |
		 	(fixedDelimiters indexOf:( char)) == 0 ifFalse: [retarr add: char]].
		 
	^ retarr
	
	