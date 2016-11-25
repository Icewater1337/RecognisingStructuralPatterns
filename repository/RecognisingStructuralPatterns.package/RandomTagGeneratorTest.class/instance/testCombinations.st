as yet unclassified
testCombinations
|endTagSymbolArr endArr beginArr|
endTagSymbolArr:= OrderedCollection withAll:#('/' '!').
endArr:= OrderedCollection withAll:#(')' ']').
beginArr:= OrderedCollection withAll:#('(' '[').

randomListGenerator := ((RandomTagGenerator new)
	begin: beginArr;
	end: endArr;
	endTagSymbol: endTagSymbolArr;
	yourself) generate.
	
self assert: (randomListGenerator size= 8).