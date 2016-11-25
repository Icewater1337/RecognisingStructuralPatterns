elements
object
	^ '{' asParser trim, ((nameValuePair, ',' asParser trim ) star, nameValuePair) optional,'}' asParser trim