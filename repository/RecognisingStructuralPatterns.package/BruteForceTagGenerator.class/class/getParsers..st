defaults
getParsers: input
	| argsCreator|
	argsCreator := (EnumArgumentsCreator new)
	input: input;
	yourself.
	
	
	^ (self new)
	begins: argsCreator begins;
	ends: argsCreator ends;
	endTagSymbols: argsCreator endTagSymbols;
	generate.
	