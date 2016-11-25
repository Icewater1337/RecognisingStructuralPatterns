accessing
list1
	^ (BruteForceListGenerator new)
		begins:  #( $[ ${ $();
		ends: #($] $} $));
		delimiters: #($,);
		elements: element;
		yourself