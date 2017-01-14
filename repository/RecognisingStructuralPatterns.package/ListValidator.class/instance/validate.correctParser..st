as yet unclassified
validate: aCollection correctParser: correctParser
	|parsedInputs correctlyParsedInputs finalResults|
	
	parsedInputs:=  ParserGeneratorExecutor new parseListWithOrder: aCollection.
	correctlyParsedInputs:= OrderedCollection new.
	finalResults:= OrderedCollection new.
	
	"sget the correct parsed String"
	(aCollection do: [ :string |
		correctlyParsedInputs add:(correctParser parse:string)	 ]).
	

	"here i need to go through the parsed inputs and then i need the same input parsed with the correct parser. since they are in 2 different collections, ineed the index to access the same elemeent in the same collection. TODO: Better way?"
	(1 to: parsedInputs size) do: [ :index |
		|visitor correctOutput allResults sortedResults|
			visitor:= ExportVisitor new. 
			sortedResults := SortedCollection sortBlock: [:c1 :c2 | c1 			f1score >= c2 f1score].
			correctOutput:= (visitor visit: (correctlyParsedInputs at: 			index)) output.		
								
			allResults := (((ValidatorSuite new)
				correctResult: correctOutput;
				results: (parsedInputs at: index);
				yourself) validate).
				"set the index, so we know where the index of the element was in teh list of the presorted parsers."
				(1 to: allResults size) do: [ :i |
					(allResults at:i)indexOfParserInList:i.
					
					 ].
				
				allResults do: [ :result | (result isKindOf: ResultNode) & (result f1score isKindOf: Float)
				ifTrue:[sortedResults add: result]].
				
				(sortedResults size > 0)
				ifTrue:[
					finalResults add: (sortedResults at:1)]
				ifFalse:[finalResults add:'No match at all'.].
			
		 ].
	^finalResults