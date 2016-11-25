as yet unclassified
singleQuoteString
	^ (self new)
		begin: $' asParser;
		end: $' asParser;
		escape: ('\' asParser / '''' asParser);
		generateParser