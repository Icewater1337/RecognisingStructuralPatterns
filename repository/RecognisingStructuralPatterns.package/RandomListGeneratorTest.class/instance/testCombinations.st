as yet unclassified
testCombinations
|delimiterArr endArr beginArr|
delimiterArr:= OrderedCollection withAll:#(',' ';').
endArr:= OrderedCollection withAll:#(')' ']').
beginArr:= OrderedCollection withAll:#('(' '[').

randomListGenerator := ((RandomListGenerator new)
	begin: beginArr;
	end: endArr;
	delimiter: delimiterArr;
	yourself) generate.
	
self assert: (randomListGenerator size= 8).