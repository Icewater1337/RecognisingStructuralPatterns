defaults
getParsers: input
	| argsCreator|
	argsCreator := (GeneratorArgumentsCreator new)
	input: input;
	yourself.
	
	
	^ (self new)
	keys: { NilParserFactory new };
	generate.