generating
generate
|stringGen |
stringGen := ((StringGenerator new)
		begin:beginBlock;
		end:endBlock;
		generateParser).
		
	^ beginKw trim, (stringGen star), element, endKw trim, (stringGen star) ==> [ :nodes| 
		nodes second first contents= nodes fifth first contents
			ifTrue: [ nodes ]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]