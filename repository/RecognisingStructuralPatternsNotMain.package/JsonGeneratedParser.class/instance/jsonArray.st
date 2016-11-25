as yet unclassified
jsonArray
	^ (ListGenerator new)
		begin:$[ asParser token;
		end:$] asParser;
		delimiter:$, asParser;
		element: jsonObject /jsonArray/ StringGenerator doubleQuoteString / StringGenerator identifierDigit / StringGenerator identifier ;
		generateParser