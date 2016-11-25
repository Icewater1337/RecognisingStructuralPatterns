generating
generate
	| memoized parser |
	
	memoized := element memoized.
	
	parser := begin trim, 
		(memoized, delimiter trim) star, memoized optional, 
	  end trim
	map: [ :_open :_coll :_el :_close | 
		| retval |
		retval := (_coll asOrderedCollection collect: #first).
		_el isNil ifFalse: [ retval add: _el]. 
		Array with: 'LIST#', _open start asString with: retval
	].

	^ parser

	"this method created the actual parser for the element"