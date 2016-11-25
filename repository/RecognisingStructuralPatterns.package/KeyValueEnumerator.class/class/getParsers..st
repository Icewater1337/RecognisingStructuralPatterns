defaults
getParsers: input
	| argsCreator|
	argsCreator := (EnumArgumentsCreator new)
	input: input;
	yourself.
	
	^ (self new)
	keys: {NilGenerator new generateParser};
	values: {NilGenerator new generateParser};
	delimiters: argsCreator delimiters;
	enumerate.