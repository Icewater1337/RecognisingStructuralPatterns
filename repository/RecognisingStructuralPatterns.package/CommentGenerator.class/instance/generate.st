generating
generate
	| any nilG newline|
	any := #any asParser.
	newline:= #newline asParser.
	nilG := NilGenerator whatever.
		
	^ (singleLineComment, (newline negate star) token)/(beginComment trim, nilG token, endComment trim)