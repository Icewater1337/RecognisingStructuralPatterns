as yet unclassified
jsonArray
	^ (ListGenerator new)
		begin:$[ asParser token;
		end:$] asParser;
		delimiter:$, asParser;
		element: jsonObject / StringGenerator doubleQuoteString;
		generateParser