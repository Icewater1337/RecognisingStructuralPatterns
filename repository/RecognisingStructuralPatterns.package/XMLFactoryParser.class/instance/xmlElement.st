accessing
xmlElement
	|generator tag aParser |
	
	tag := PPDelegateParser new.
	generator := (TagParserFactory new).
		generator begins:$< asParser trim token.
		generator end:$> asParser trim.
		generator endTagSymbol: $/ asParser trim.
		generator element:  content /tag/ (NilParserFactory new generateParser).
		aParser := generator generateParser.
		tag setParser: aParser.
		^ aParser
	
		
		
	
	  