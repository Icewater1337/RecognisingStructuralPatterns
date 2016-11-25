as yet unclassified
list
	^ (BruteForceListGenerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($,);
		elements: string  / { NilParserFactory new };
		yourself
