elements
string2
	^singleQuote trim, ((singleQuoteEscape1 / singleQuoteEscape2 /singleQuote negate) star)flatten, singleQuote trim