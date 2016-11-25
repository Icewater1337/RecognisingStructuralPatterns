statements
content
	^(openFileTag / (('</' asParser/ '<' asParser) negate plus flatten )/ xmlStmt1 / comment / emptyElementTag) star