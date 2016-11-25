accessing
list1
	^ (BruteForceListGenerator new)
		begin: #($[ ${ $();
		end: #($] $} $) );
		delimiter: #($,);
		elements: element;
		yourself