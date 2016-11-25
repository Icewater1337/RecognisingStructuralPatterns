as yet unclassified
validateAsString
| solutions|
solutions:= OrderedCollection new.
	results do: [ :_result |
		solutions add:((Validator new)
		correctResult: correctSolution;
		result: _result;
		yourself) validateAsString ].
	
^ solutions