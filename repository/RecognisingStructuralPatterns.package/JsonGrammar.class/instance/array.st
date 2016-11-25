elements
array
	^'[' asParser trim, (((object, ',' asParser trim) star, object)/((nameTag, ',' asParser trim)star, nameTag)), ']' asParser trim