as yet unclassified
endTagSymbols
 | fixedEndTagSymbols extrChars retarr|
	fixedEndTagSymbols :=  FixedListOfKnownItems fixedEndTagSymbols.
	extrChars:= self extractedChars.
	
	retarr:= OrderedCollection new.
	
	extrChars do: [ :char |
		 	(fixedEndTagSymbols indexOf:( char)) == 0 ifFalse: [retarr add: char]].
		 
	^ retarr
	
	