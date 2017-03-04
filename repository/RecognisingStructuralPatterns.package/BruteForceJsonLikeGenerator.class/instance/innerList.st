accessing
innerList
	^ (BruteForceListGenerator new)
		begins: #(${ $[ $() ;
		ends: #($} $] $));
		delimiters: #($,);
		elements: element ;
		yourself