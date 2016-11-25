accessing
list1
	^ (ListEnumerator new)
		begin: #($[ ${ $();
		end: #($] $} $) );
		delimiter: #($,);
		elements: list / list1 / {StringGenerator identifier }/ {StringGenerator identifierDigit} / {NilGenerator new} ;
		yourself