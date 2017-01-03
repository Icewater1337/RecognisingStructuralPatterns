defaults
getParsers: input
	| argsCreator|
	argsCreator := (GeneratorArgumentsCreator new)
	input: input;
	yourself.
	
	^ (self new)
	keys: {StringParserFactory identifier }/ {StringParserFactory identifierDigit};
	delimiters: argsCreator delimiters;
	generate.