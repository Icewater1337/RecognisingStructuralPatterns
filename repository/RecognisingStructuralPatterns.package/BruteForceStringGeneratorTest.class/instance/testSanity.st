tests
testSanity
	|escapeArr endArr beginArr|

	endArr:= #('"' '''').
	beginArr:= #('"' '''').
	escapeArr:= #('\').

	stringGenerator := ((BruteForceStringGenerator new)
		begins: beginArr;
		ends: endArr;
		escapes: escapeArr;
		yourself).

	self assert: stringGenerator generate anySatisfy: [ :p | p matches: '"foobar"' ]