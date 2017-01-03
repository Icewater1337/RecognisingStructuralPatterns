as yet unclassified
getParsers: input
	| argsCreator|
	argsCreator := (GeneratorArgumentsCreator new)
	input: input;
	yourself.
		
	^ (self new)
	begins: argsCreator begins;
	ends: argsCreator ends;
	endTagSymbols: argsCreator endTagSymbols;
	generate.
	