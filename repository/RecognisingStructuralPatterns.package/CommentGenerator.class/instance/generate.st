generating
generate
	| any nilG newline|
	any := #any asParser.
	newline:= #newline asParser.
	nilG := NilGenerator whatever.
		
	^ (singleLineComment, (newline negate star) flatten)/(beginComment trim, nilG flatten, endComment trim)