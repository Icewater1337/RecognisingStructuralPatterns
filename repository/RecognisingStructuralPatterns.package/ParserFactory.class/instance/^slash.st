arithmetic
/ anotherFactory
	^ ChoiceParserFactory new
		first: self;
		second: anotherFactory;
		yourself