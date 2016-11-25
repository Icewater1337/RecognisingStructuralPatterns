as yet unclassified
list1
	^ (ListEnumerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($,);
		elements: element;
		yourself