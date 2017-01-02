accessing
docTypeTag
	^(StringParserFactory new)
		begin:'<!' asParser token;
		end:'>' asParser;
		generateParser