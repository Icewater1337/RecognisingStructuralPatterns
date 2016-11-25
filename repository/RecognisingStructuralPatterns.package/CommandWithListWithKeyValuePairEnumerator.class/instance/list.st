as yet unclassified
list
	^ (ListEnumerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($, $;);
		elements: keyValuePair /command / {StringGenerator identifier}/ {NilGenerator new} ;
		yourself
