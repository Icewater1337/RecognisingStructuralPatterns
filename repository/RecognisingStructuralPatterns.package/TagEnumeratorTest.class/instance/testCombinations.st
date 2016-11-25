as yet unclassified
testCombinations
|endTagSymbolArr endArr beginArr bruteForceTagEnumerator|
endTagSymbolArr:= #('/').
endArr:= #(')' ']').
beginArr:= #('(' '[').


bruteForceTagEnumerator := ((TagEnumerator new)
	begins: beginArr;
	ends: endArr;
	endTagSymbols: endTagSymbolArr;
	elements: #($a);
	yourself) enumerate.
	
self assert: (bruteForceTagEnumerator size= 4).