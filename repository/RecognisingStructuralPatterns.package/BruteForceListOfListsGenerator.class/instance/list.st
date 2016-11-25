as yet unclassified
list
	^ (BruteForceListGenerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($,);
		elements: list  / { NilParserFactory new } ;
		yourself