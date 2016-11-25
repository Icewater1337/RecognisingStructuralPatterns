elements
array
	^'[' asParser trim, (((object, ',' asParser trim) star, object)/((nameTag, ',' asParser trim)star, nameTag)), ']' asParser trim
	
	map: [ :_open :_coll  :_close | 
		| retval |
		retval := (_coll first asOrderedCollection collect: #first).
		retval add: _coll second.
		retval
	] 