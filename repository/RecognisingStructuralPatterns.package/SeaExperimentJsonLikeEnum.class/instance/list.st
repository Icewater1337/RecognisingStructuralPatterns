as yet unclassified
list
	^ (ListEnumerator new)
		begin: #(${);
		end: #($});
		delimiter: #($,);
		elements: keyValuePair / string / {(NilGeneratorDelimiter new
	delimiter:','
	yourself) generateParser};
		yourself