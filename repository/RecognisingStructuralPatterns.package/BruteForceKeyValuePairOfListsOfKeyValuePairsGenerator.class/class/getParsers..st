defaults
getParsers: input
	| argsCreator generator|
	argsCreator := (GeneratorArgumentsCreator new)
	input: input;
	yourself.
		
	generator:= (self new).
		
		argsCreator begins isEmpty
			ifFalse:[ generator begins:argsCreator begins. ].
		argsCreator ends isEmpty
			ifFalse:[generator ends: argsCreator ends].
		argsCreator delimiters isEmpty
			ifFalse:[generator delimiters: argsCreator delimiters].
		
	
	^ generator enumerationNamed: #list generate.
	