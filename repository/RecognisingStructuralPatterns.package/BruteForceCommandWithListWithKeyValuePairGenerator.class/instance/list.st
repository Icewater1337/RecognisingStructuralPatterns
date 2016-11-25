accessing
list
	^ (BruteForceListGenerator new)
		begins: #($( $[ ${);
		ends: #($) $] $});
		delimiters: #($, $;);
		elements: keyValuePair /command / {StringParserFactory identifier}/ {NilParserFactory new} ;
		yourself
