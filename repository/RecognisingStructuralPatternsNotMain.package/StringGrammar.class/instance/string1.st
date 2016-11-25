elements
string1
	^ quote, ((quoteEscape1 / quoteEscape2 /quote negate ) star)flatten , quote
	
"to do: add support for escaping quotes"