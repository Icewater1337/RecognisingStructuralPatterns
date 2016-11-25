elements
string
	^ quote, (quoteEscape1 / quoteEscape2 /quote negate ) star, quote
	
"to do: add support for escaping quotes"