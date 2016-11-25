as yet unclassified
tag
	^ (BruteForceTagGenerator new)
		begins: #($< $[);
		ends: #($> $]);
		endTagSymbols: #($/);
		elements: tag  / { NilParserFactory new };
		yourself