accessing
outerList
	^ (BruteForceListGenerator new)
		begins:  #( $[ ${ $();
		ends: #($] $} $));
		delimiters: #($,);
		elements: element;
		yourself