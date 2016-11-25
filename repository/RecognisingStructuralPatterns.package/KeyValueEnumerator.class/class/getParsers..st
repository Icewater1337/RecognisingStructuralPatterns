defaults
getParsers: input
	| argsCreator|
	argsCreator := (EnumArgumentsCreator new)
	input: input;
	yourself.
	
	^ (self new)
	keys: {StringGenerator identifier }/ {StringGenerator identifierDigit};
	delimiters: argsCreator delimiters;
	enumerate.