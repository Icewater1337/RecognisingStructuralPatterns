defaults
getParsers: input
	| argsCreator|
	argsCreator := (EnumArgumentsCreator new)
	input: input;
	yourself.
	
	^ (self new)
	begin: argsCreator begins;
	end: argsCreator ends;
	delimiter: argsCreator delimiters;
	enumerate.