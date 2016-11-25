as yet unclassified
xmlElement
	|generator tag|
	
	tag := PPDelegateParser new.
	generator := (TagGenerator new).
		generator begin:$< asParser trim token.
		generator end:$> asParser trim.
		generator endTagSymbol: $/ asParser trim.
		generator element:  content / (tag not, (NilGenerator new generateParser) ) /((tag)star).
		parser := generator generateParser.
		tag setParser: parser.
		^ parser
	
		
		
	
	  