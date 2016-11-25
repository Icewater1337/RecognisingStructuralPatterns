as yet unclassified
list
	^ (BruteForceListGenerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($, $;);
		elements: keyValuePair /command / {StringParserFactory identifier}/ {NilParserFactory new} ;
		yourself
