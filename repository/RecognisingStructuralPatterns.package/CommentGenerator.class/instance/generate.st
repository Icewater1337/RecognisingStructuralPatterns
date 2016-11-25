generating
generate
	| any nilG |
	any := #any asParser.
	nilG := NilGenerator whatever.
		
	^ (singleLineComment, nilG flatten)/(beginComment trim, nilG flatten, endComment trim)