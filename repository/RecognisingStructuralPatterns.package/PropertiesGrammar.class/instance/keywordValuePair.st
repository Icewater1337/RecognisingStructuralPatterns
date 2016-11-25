elements
keywordValuePair
	^ (newline negate and, (#word asParser star) flatten trim), ($: asParser trim / $= asParser trim), newline negate star