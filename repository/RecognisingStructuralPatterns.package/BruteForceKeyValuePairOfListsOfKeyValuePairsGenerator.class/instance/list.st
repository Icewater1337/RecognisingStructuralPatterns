as yet unclassified
list
	^ (BruteForceListGenerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($,);
		elements: keyValuePair / string;
		yourself