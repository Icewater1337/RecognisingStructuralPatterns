as yet unclassified
validate
| solutions|
solutions:= OrderedCollection new.
	results do: [ :_result |
		solutions add:((Validator new)
		correctResult: correctResult;
		result: _result;
		yourself) validate ].
	
^ solutions