defaults
getParsers: input
	| argsCreator|
	argsCreator := (EnumArgumentsCreator new)
	input: input;
	yourself.
	
	^ (self new)
	begins: argsCreator begins;
	ends: argsCreator ends;
	elements: {NilGenerator new generateParser};
	delimiters: argsCreator begins;
	enumerate.