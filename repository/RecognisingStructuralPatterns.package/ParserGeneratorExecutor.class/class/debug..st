debug
debug: input
	|parsers generators results|
	
	generators:= ParserGenerator getBruteForceGeneratorSubclasses.
	results:= OrderedCollection new.
	parsers:= OrderedCollection new.
	generators do:[:gen | parsers addAll: (gen getParsers: input)].
	
	
	parsers do: [ :parser | 
		results add:([ parser debug:input. ] valueWithin: 900 milliSeconds onTimeout:#failure) ].
	
	^ results.
	
	
	

	
