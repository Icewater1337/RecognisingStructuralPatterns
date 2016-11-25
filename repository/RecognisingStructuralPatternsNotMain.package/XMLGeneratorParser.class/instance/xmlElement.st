as yet unclassified
xmlElement
	|generator tag|
	
	tag := PPDelegateParser new.
	generator := (TagParserFactory new).
		generator begin:$< asParser trim token.
		generator end:$> asParser trim.
		generator endTagSymbol: $/ asParser trim.
		generator element:  content /tag / (NilParserFactory new generateParser).
		parser := generator generateParser.
		tag setParser: parser.
		^ parser
	
		
		
	
	  