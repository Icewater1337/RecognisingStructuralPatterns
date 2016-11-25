elements
bracketsElement
	^'{' asParser, '}' asParser negate star flatten, '}' asParser