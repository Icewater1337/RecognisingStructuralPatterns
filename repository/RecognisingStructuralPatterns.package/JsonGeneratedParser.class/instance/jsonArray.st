as yet unclassified
jsonArray
	^ (ListParserFactory new)
		begin:$[ asParser token;
		end:$] asParser;
		delimiter:$, asParser;
		element: jsonObject /jsonArray/ StringParserFactory doubleQuoteString / StringParserFactory identifierDigit / StringParserFactory identifier ;
		generateParser