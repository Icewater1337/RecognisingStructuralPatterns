as yet unclassified
command
	^ (CommandGenerator new)
			key: NilGenerator new generateParser;
			arguments: list;
			generateParser.