statements
rawText
	^ (('</' asParser/ '<' asParser) negate plus flatten)