elements
hyperlink
	^'![' asParser, plainText, ']' asParser, '(' asParser, quote negate star, quote trim, plainText, quote trim