as yet unclassified
list1
	^ (ListEnumerator new)
		begin: #($[);
		end: #($]);
		delimiter: #($,);
		elements: keyValuePair / string / {(NilGeneratorDelimiter new
	delimiter:','
	yourself) generateParser };
		yourself