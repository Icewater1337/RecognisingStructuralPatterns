as yet unclassified
lessGreaterThanTag
	^ (self new)
		begin: $< asParser;
		end: $> asParser;
		endTagSymbol: $/ asParser;
		element: NilGenerator new generateParser;
		generateParser