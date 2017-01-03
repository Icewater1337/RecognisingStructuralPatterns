as yet unclassified
ends
 | fixedEnds extrChars retarr|
	fixedEnds :=  FixedListOfKnownItems fixedEnds.
	extrChars:= self extractedChars.
	
	retarr:= OrderedCollection new.
	
	extrChars do: [ :char |
		 	(fixedEnds indexOf:( char)) == 0 ifFalse: [retarr add: char]].
		 
	^ retarr
	
	