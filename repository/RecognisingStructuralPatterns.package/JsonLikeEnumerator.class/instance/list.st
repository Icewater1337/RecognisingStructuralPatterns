as yet unclassified
list
	^ (ListEnumerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($,);
		elements: element;
		yourself