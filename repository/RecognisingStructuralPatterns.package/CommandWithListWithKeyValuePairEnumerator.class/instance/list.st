as yet unclassified
list
	^ (ListEnumerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($, $;);
		elements: keyValuePair /command /{NilGenerator new} ;
		yourself
