tags
emptyElementTag
	^'<' asParser, keyword trim, '/>' asParser negate star, '/>' asParser