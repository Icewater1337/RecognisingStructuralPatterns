defaults
getParsers: input
	| argsCreator|
	argsCreator := (EnumArgumentsCreator new)
	input: input;
	yourself.
	
	
	^ (self new)
	keys: { NilParserFactory new };
	generate.