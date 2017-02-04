accessing
docTypeTag
	^(StringParserFactory new)
		begins:'<!' asParser token;
		end:'>' asParser;
		generateParser