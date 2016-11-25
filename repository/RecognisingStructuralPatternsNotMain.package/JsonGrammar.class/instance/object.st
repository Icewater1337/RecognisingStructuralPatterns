elements
object
	^ '{' asParser trim, (nameValuePair , ',' asParser trim ) star, nameValuePair,'}' asParser trim
	
	map: [ :_open :_coll :_pair :_close | 
		| retval |
		retval := (_coll asOrderedCollection collect: #first).
		retval add: _pair.
		retval
	] 