as yet unclassified
xmlElement
	|generator|
	generator := (TagGenerator new).
		generator begin:$< asParser trim token.
		generator end:$> asParser trim.
		generator endTagSymbol: $/ asParser trim.
		generator element:  content / (generator generateParser not, NilGenerator new generateParser ) /((generator generateParser)star).
		
		^ generator generateParser
	
		
		
	
	  