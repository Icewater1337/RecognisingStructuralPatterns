elements
comment
	| generator par|
	  generator:= (CommentGenerator new).
		
	generator beginComment: '/*' asParser.
	generator endComment:'*/' asParser.
	generator singleLineComment:'//'asParser.
	par:= generator generateParser.
	
	^ (par not, any) star,
		par,
		((par / eof) not, any) star
		
		==> [ :elt | elt second]
		
		

	
	
		