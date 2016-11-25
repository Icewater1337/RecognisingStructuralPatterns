tests
testCombinations
	|escapeArr endArr beginArr|

	endArr:= #('"' '''').
	beginArr:= #('"' '''').
	escapeArr:= #('\"' '\''').

	stringEnumerator := ((StringEnumerator new)
		begin: beginArr;
		end: endArr;
		escape: escapeArr;
		yourself).

	self assert: escapeArr size equals: 2.
	self assert: stringEnumerator enumerate size equals: 8.