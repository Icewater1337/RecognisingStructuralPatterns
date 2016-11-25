as yet unclassified
string
	"bibtex is a subset of command, its a command with a list the list itself contains key value pairs as parameters and one string."
 ^ (StringParserFactory new)
	begin: ${ asParser;
	end: $} asParser;
	generateParser