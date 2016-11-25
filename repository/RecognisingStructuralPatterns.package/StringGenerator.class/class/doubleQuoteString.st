as yet unclassified
doubleQuoteString
	^ (self new)
		begin: $" asParser;
		end: $" asParser;
		escape: ('\"' asParser / '""'asParser );
		generateParser