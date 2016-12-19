generating
"protocol: generating"
generate
	| parser |
	"memoized := element memoized."
 
	parser := begin trim, 

	element optional, ((delimiter trim, element) star),
	end trim
	
	map: [ :_open :_el :_coll  :_close | 
		| retval |
		retval := OrderedCollection new.
		_el isNil ifFalse: [ retval add: _el]. 
		retval addAll: (_coll collect: #second).
		Array with: 'LIST#', _open start asString with: retval
	].

^ parser
