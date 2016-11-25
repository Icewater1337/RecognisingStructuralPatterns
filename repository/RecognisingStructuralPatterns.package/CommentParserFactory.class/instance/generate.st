generating
generate
	| any nilG newline|
	any := #any asParser.
	newline:= #newline asParser.
	nilG := NilParserFactory new generateParser.
		
	^ (singleLineComment, (newline negate star) token)/(beginComment trim, nilG token, endComment trim)