as yet unclassified
testCombinations
	|delimiters ends begins elements |
	delimiters:= OrderedCollection withAll:#(',' ';').
	ends:= OrderedCollection withAll:#(')' ']').
	begins:= OrderedCollection withAll:#('(' '[').
	elements := OrderedCollection with: NilGenerator whatever.

	randomListGenerator := ((BruteForceListGenerator new)
		begin: begins;
		end: ends;
		delimiter: delimiters;
		elements: elements;
		yourself) generate.
		
	self assert: randomListGenerator size equals: 8.