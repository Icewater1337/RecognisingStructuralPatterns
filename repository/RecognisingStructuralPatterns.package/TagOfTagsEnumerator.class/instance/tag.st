as yet unclassified
tag
	^ (TagEnumerator new)
		begins: #($< $[);
		ends: #($> $]);
		endTagSymbols: #($/);
		elements: tag  / { NilGenerator new };
		yourself