generating
generate
	| any nilG |
	any := #any asParser.
	nilG := NilGenerator whatever.
		
	^ (beginBlock not, any) star flatten,beginBlock trim, ((endBlock not, element, lineDelimiter)star), endBlock trim
	
map: [:_kw :_begin :_elt :_end |
		| retval retArr |
		retval := (_elt asOrderedCollection collect: #second).
		retArr := Array with: _kw with: _begin with:retval  with:_end.
		retArr
		
	]