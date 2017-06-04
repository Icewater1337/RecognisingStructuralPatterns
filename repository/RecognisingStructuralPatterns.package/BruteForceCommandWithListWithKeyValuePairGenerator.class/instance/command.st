accessing
command
	^ (BruteForceCommandGenerator new)
		keys:  {((NegateParserFactory new)
						negateChar:${ asParser/ $; asParser / $} asParser;
						yourself)};
		arguments: list ;
		yourself