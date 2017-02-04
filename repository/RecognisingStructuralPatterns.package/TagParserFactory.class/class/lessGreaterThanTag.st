as yet unclassified
lessGreaterThanTag
	^ (self new)
		begins: $< asParser;
		end: $> asParser;
		endTagSymbol: $/ asParser;
		element: NilParserFactory new generateParser;
		generateParser