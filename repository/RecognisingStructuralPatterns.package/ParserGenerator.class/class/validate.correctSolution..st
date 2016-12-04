as yet unclassified
validate: input correctSolution: corrSol
	|finalResults|
	
	finalResults:= self parse: input.

	^ 	(((ValidatorSuite new)
		correctResult: corrSol;
		results: finalResults;
		yourself) validate).
	
	
	
	
	

	
