as yet unclassified
singleQuoteString
	^ (self new)
		begins: $' asParser;
		end: $' asParser;
		escape: ('\' asParser / '''' asParser);
		generateParser