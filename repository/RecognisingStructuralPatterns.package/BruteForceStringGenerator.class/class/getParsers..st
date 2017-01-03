defaults
getParsers: input
	| argsCreator|
	argsCreator := (GeneratorArgumentsCreator new)
	input: input;
	yourself.
	
	^ (self new)
	begin: argsCreator begins;
	end: argsCreator ends;
	generate.