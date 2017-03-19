tests
"protocol: as yet unclassified"
testValidateStringSeas
|correctSolution enumerator parsers sol result string par|	
	enumerator := BruteForceListGenerator new.
	enumerator elements: (BruteForceStringGenerator new) / {NilParserFactory new}.

	parsers:= enumerator generate.
	sol:= OrderedCollection new.
	string:= '("bar","huu", random, random2, "hen")'.
	
	
parsers do: [  :p | sol add:(p parse:string)].
		
	par:= (ListParserFactory new)
					begins: '(' asParser token;
					end: ')' asParser;
					delimiter: ',' asParser;
					element: StringParserFactory doubleQuoteString/ NilParserFactory new generateParser;
					generateParser.

	correctSolution := par parse:string.
	
	result := (((ValidatorSuite new)
		correctResult: correctSolution;
		results: sol;
		yourself) validate).

	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result anySatisfy: [ :e | e precision closeTo: 1.0]).
	self assert: (result anySatisfy: [:e | e recall closeTo:1]).
	self assert: (result anySatisfy: [:e | e f1score closeTo:1]).

