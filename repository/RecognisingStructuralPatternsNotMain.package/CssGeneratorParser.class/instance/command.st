as yet unclassified
command
	^ (CommandParserFactory new)
			key: NilParserFactory new generateParser;
			arguments: list;
			generateParser.