accessing
list
	^ (BruteForceListGenerator new)
		begins: #($( $[ ${);
		ends: #($) $] $});
		delimiters: #($,);
		elements: list  / { NilParserFactory new } ;
		yourself