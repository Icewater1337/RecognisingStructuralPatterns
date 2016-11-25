elements
object
	^ '{' asParser trim, (nameValuePair, ',' asParser trim ) star, nameValuePair,'}' asParser trim