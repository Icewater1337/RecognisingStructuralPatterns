accessing
list
	^ (BruteForceListGenerator new)
		begins: #($( $[ ${);
		ends: #($) $] $});
		delimiters: #($,);
		elements: keyValuePair / string;
		yourself