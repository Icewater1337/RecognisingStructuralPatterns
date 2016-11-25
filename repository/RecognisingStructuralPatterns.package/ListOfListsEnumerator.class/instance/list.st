as yet unclassified
list
	^ (ListEnumerator new)
		begin: #($( $[ ${);
		end: #($) $] $});
		delimiter: #($,);
		elements: { NamedReferenceGenerator named: #list };
		yourself