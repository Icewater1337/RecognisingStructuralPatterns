accessing
resolve: aParserGenerator
	aParserGenerator class == generatorClass ifTrue: [  
		^ aParserGenerator parserReference
	].

	^ self