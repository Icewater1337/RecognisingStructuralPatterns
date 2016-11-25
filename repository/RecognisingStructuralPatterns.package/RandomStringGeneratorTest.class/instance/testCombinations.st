as yet unclassified
testCombinations
|escapeArr endArr beginArr|
endArr:= OrderedCollection withAll:#(')' ']').
beginArr:= OrderedCollection withAll:#('(' '[').
escapeArr:= (RandomArrayStorage new) generateEscapeArr:beginArr.

randomStringGenerator := ((RandomStringGenerator new)
	begin: beginArr;
	end: endArr;
	escape: escapeArr;
	yourself) generate.

self assert: escapeArr size = 4.
self assert: (randomStringGenerator size= 16).