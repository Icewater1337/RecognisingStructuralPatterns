accessing
openFileTag
	^(StringParserFactory new)
		begins:'<?' asParser token;
		end:'?>' asParser;
		generateParser