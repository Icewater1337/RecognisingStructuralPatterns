tests
testCombinations
	|escapeArr endArr beginArr|

	endArr:= #('"' '''').
	beginArr:= #('"' '''').
	escapeArr:= #('\"').

	stringEnumerator := ((BruteForceStringGenerator new)
		begin: beginArr;
		end: endArr;
		escape: escapeArr;
		yourself).

	self assert: escapeArr size equals: 1.
	self assert: stringEnumerator generate size equals: 4.