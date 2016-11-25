tags
openFileTag
	^'<?' asParser, '?>' asParser negate star, '?>' asParser