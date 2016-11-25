accessing
list
	^ (BruteForceListGenerator new)
		begins: #($( $[ ${);
		ends: #($) $] $});
		delimiters: #($,);
		elements: string  / { NilParserFactory new };
		yourself
