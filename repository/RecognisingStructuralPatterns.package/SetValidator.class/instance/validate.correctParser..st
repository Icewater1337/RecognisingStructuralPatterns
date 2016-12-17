as yet unclassified
validate: aCollection correctParser: correctParser
	|parsedInputs correctlyParsedInputs finalResults|
	
	
	parsedInputs:=  ParserGenerator parseSet: aCollection.
	correctlyParsedInputs:= OrderedCollection new.
	finalResults:= OrderedCollection new.
	
	"get the correct parsed String"
	(aCollection do: [ :string |
		correctlyParsedInputs add:(correctParser parse:string)	 ]).
	

	(1 to: parsedInputs size) do: [ :index |
		|visitor correctOutput allResults sortedResults|
			visitor:= ExportVisitor new. 
			sortedResults := SortedCollection sortBlock: [:c1 :c2 | c1 			f1score >= c2 f1score].
			correctOutput:= (visitor visit: (correctlyParsedInputs at: 			index)) output.
						
			allResults := (((ValidatorSuite new)
				correctResult: correctOutput;
				results: (parsedInputs at: index);
				yourself) validate).
				
				allResults do: [ :result | (result isKindOf: ResultNode) & 					(result f1score isKindOf: Float)
					ifTrue:[sortedResults add: result]].
				
				finalResults add: (sortedResults at:1).
			
		 ].
	^finalResults