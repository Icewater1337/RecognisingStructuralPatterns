accessing
jsonObject
	^ (ListParserFactory new)
		begin:${ asParser token;
		end:$} asParser;
		delimiter:$, asParser;
		element: keywordValuePair;
		generateParser