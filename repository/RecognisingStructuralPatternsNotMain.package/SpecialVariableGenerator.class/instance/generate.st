generating
generate
	| any nilG stringGen |
	any := #any asParser.
	nilG := NilGenerator whatever.
	stringGen := ((StringGenerator new)
		begin:beginBlock;
		end:endBlock;
		generateParser).
	
	^ initializer,  (beginBlock not, any) star 	flatten, stringGen star end.