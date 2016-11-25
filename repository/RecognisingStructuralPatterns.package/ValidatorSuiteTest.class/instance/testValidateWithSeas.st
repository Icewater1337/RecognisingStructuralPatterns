as yet unclassified
"protocol: as yet unclassified"
testValidateWithSeas
|parsers sol result string|	
	
parsers:= (BruteForceJsonLikeGenerator new enumerationNamed:#list) enumerate.
sol:= OrderedCollection new.

string:= '{
    "glossary": {
        "title": "example glossary",
		  ID ;  WillNotUNderstandThis,
		   "fine" :"again"				
    }
}'.
	

	parsers do: [  :p | 
		(p end matches:string)
		ifTrue:[sol add:(p parse: string)] ].
		
	correctSol:= OrderedCollection new.
	correctSol add:'ROOT->LIST#1'.
	correctSol add:'LIST#1->glossary'.
	correctSol add:'glossary->LIST#19'.
	correctSol add:'LIST#19->title'.
	correctSol add:'LIST#19->fine'.
	correctSol add:'title->example glossary'.
	correctSol add:'fine->again'.
	correctSol add:'LIST#19->nodeIDidNotget'.

	result := (((ValidatorSuite new)
		correctResult: correctSol;
		results: sol;
		yourself) validate).

	self assert: (result isKindOf: OrderedCollection).
	self assert: (result allSatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result anySatisfy: [ :e | e precision closeTo: 0.875]).
	self assert: (result anySatisfy: [:e | e recall closeTo:0.875]).
	self assert: (result anySatisfy: [:e | e f1score closeTo: 0.875]).
