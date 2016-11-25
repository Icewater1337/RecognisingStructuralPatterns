accessing
list
	^ (BruteForceListGenerator new)
		begins: #(${ $[ $() ;
		ends: #($} $] $));
		delimiters: #($,);
		elements: element ;
		yourself