as yet unclassified
comment
	^(CommentGenerator new)
		beginComment: '<!--' asParser token;
		endComment: '-->' asParser;
		singleLineComment: '#' asParser; 
		generateParser
		