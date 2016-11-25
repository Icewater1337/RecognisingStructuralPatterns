as yet unclassified
comment
	^(CommentParserFactory new)
		beginComment: '<!--' asParser token;
		endComment: '-->' asParser;
		singleLineComment: '#' asParser; 
		generateParser
		