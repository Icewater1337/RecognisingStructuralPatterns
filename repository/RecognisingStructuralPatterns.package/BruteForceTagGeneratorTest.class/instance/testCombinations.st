as yet unclassified
testCombinations
|endTagSymbolArr endArr beginArr bruteForceTagEnumerator|
endTagSymbolArr:= #('/').
endArr:= #(')' ']').
beginArr:= #('(' '[').


bruteForceTagEnumerator := ((BruteForceTagGenerator new)
	begins: beginArr;
	ends: endArr;
	endTagSymbols: endTagSymbolArr;
	elements: #($a);
	yourself) generate.
	
self assert: (bruteForceTagEnumerator size= 4).