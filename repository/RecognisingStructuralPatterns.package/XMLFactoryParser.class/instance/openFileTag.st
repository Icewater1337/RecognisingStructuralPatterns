accessing
openFileTag
	^(StringParserFactory new)
		begin:'<?' asParser token;
		end:'?>' asParser;
		generateParser