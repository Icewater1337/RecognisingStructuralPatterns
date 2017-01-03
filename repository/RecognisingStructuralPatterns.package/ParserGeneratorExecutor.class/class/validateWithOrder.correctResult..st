validating
validateWithOrder: input correctResult: correctRes
	|orderList validatedResults parsedResults sortedResults filteredResults |
	
	orderList := OrderedCollection new.
	filteredResults:= OrderedCollection new.
	validatedResults:= OrderedCollection new.
	parsedResults := OrderedCollection new.
	sortedResults := SortedCollection sortBlock: [:c1 :c2 | c1 f1score >= c2 f1score]. 

	
	parsedResults := self parse: input.
	
	parsedResults do: [ :result | (result isKindOf: Node)
		ifTrue:[filteredResults add: result]].
	
	validatedResults:=	(((ValidatorSuite new)
		correctResult: correctRes;
		results: filteredResults;
		yourself) validate).
		
		"sorting part"
		validatedResults do: [ :result | (result isKindOf: ResultNode) & (result f1score isKindOf: Float)
		ifTrue:[sortedResults add: result]].
	
	^ sortedResults.
	
	
	

