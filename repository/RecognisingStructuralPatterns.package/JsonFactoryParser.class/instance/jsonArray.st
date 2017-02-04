accessing
jsonArray
	^ (ListParserFactory new)
		begins:$[ asParser token;
		end:$] asParser;
		delimiter:$, asParser;
		element: jsonObject /jsonArray / StringParserFactory doubleQuoteString / StringParserFactory identifierDigit / StringParserFactory identifier ;
		generateParser