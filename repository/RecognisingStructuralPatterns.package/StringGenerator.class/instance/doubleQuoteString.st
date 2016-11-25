library
doubleQuoteString
	^ (self new)
		begin: $" asParser;
		end: $" asParser;
		escape: '\"' asParser;
		yourself