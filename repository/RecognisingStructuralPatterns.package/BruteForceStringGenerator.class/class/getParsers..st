defaults
getParsers: input
	| argsCreator|
	argsCreator := (GeneratorArgumentsCreator new)
	input: input;
	yourself.
	
	^ (self new)
	begins: argsCreator begins;
	ends: argsCreator ends;
	generate.