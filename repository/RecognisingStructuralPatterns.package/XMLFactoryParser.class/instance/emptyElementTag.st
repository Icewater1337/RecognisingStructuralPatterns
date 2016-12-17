as yet unclassified
emptyElementTag
	^(StringParserFactory new)
		begin:'<' asParser;
		end:'/>' asParser;
		generateParser