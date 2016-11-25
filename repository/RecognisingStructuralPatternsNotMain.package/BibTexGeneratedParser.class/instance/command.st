as yet unclassified
command
	"bibtex is a subset of command, its a command with a list the list itself contains key value pairs as parameters and one string."
 ^ (CommandParserFactory new)
	key: StringParserFactory identifierSpecialChar;
	arguments: list;
	generateParser