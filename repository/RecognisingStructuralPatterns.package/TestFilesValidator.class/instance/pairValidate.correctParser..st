as yet unclassified
pairValidate: files correctParser: correctParser
	|shorterFiles solution allSolutions|
	shorterFiles:= OrderedCollection new.
	allSolutions:= OrderedCollection new.
	"adding the comparator file"
	shorterFiles add:(files at:1).
	files removeAt:1.
	"iterate through all files"
	files do: [ :file |
		|time|
		shorterFiles add:(file).
		solution:= OrderedCollection new.
		time:= [ 
			solution:= ListValidator new validate: shorterFiles correctParser:(correctParser) 			]timeToRun. 			
			allSolutions add:(time->(solution at:2)).		
					shorterFiles removeAt:2.
			].
		
		^allSolutions
	