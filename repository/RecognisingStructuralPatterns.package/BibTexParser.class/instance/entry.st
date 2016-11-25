elements
entry
	^ '@' asParser
		, ('{' asParser negate , 'Comment' asParser negate) flatten star
		, '{' asParser , varName , '}' asParser negate star , '}' asParser