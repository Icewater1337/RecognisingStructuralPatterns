accessing
list
	^ (BruteForceListGenerator new)
		begin: #(${ $[ $()  ;
		end: #($} $] $));
		delimiter: #($,);
		elements: element;
		yourself