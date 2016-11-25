as yet unclassified
jsonLikeEnumtest1
	| parsers string sol correctSolutionPar visitor correctSolution result |
	
	parsers:= OrderedCollection new.
	parsers:= ((BruteForceJsonLikeGenerator new) enumerationNamed:#list).

	string:= '{
	  "Herausgeber": "Xema",
 	 "Nummer": "1234-5678-9012-3456",
 	 "Deckung": 2e+6,
 	 "Waehrung": "EURO",
 	 "Inhaber": 
 	 {
 	   "Name": "Mustermann",
 	   "Vorname": "Max",
 	   "maennlich": true,
 	   "Hobbys": [ "Reiten", "Golfen", "Lesen" ],
 	   "Alter": 42,
 	   "Kinder": [],
 	   "Partner": null
 	 }
	}'.

	sol:= OrderedCollection new.
	correctSolutionPar:= (JsonGeneratedParser new) parse:string.
	visitor:= ExportVisitor new.
	correctSolution:=  (visitor visit: correctSolutionPar) output.

	parsers do: [  :p | sol add:(p parse: string) ].

	result:= (((ValidatorSuite new)
		correctResult: correctSolution;
		results: sol;
		yourself) validate).
		
^ result