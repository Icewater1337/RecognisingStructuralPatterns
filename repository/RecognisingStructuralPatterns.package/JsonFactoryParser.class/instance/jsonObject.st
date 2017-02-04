accessing
jsonObject
	^ (ListParserFactory new)
		begins:${ asParser token;
		end:$} asParser;
		delimiter:$, asParser;
		element: keywordValuePair;
		generateParser