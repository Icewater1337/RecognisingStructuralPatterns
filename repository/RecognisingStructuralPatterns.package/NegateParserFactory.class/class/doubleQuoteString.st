as yet unclassified
doubleQuoteString
	^ (self new)
		begins: $" asParser;
		end: $" asParser;
		escape: ('\' asParser / '"'asParser );
		generateParser