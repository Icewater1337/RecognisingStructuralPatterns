*RecognisingStructuralPatterns
deepResolve: aParserGenerator
	self allParsers do: [ :parser | 
		parser resolve: aParserGenerator
	]