as yet unclassified
emptyElementTag
	^(StringGenerator new)
		begin:'<' asParser;
		end:'/>' asParser;
		generateParser