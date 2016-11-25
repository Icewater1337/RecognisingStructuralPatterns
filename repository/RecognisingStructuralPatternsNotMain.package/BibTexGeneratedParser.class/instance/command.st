as yet unclassified
command
	"bibtex is a subset of command, its a command with a list the list itself contains key value pairs as parameters and one string."
 ^ (CommandGenerator new)
	key: StringGenerator identifierSpecialChar;
	arguments: list;
	generateParser