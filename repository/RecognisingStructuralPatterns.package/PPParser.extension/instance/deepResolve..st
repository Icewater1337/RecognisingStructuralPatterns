*RecognisingStructuralPatterns
deepResolve: aParserGenerator
	| newParser |
	"becouse I modify somethin, I first copy and than modify"

	newParser := self deepCopy.
	newParser allParsers do: [ :p | 
		p children do: [ :child | 
			p replace: child with: (child resolve: aParserGenerator) 
		]
	].

	^ newParser