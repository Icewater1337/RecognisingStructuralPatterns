as yet unclassified
openFileTag
	^(StringParserFactory new)
		begin:'<?' asParser token;
		end:'?>' asParser;
		generateParser