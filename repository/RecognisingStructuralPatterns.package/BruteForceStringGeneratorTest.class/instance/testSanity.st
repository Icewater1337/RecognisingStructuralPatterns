tests
testSanity
	|escapeArr endArr beginArr|

	endArr:= #('"' '''').
	beginArr:= #('"' '''').
	escapeArr:= #('\').

	stringEnumerator := ((BruteForceStringGenerator new)
		begin: beginArr;
		end: endArr;
		escape: escapeArr;
		yourself).

	self assert: stringEnumerator enumerate anySatisfy: [ :p | p matches: '"foobar"' ]