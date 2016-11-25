generating
generate
	^ (begin, ((((':' asParser/end/ '=' asParser) negate star) token, ':' asParser, (#letter asParser star)token ) /((#word asParser plus) token)),end trim), element trim, (begin, endTagSymbol, ((((':' asParser/end/ '=' asParser) negate star) token, ':' asParser, (#letter asParser star)token ) /((#word asParser plus) token)),end trim) 
	==> [ :nodes| 
		nodes second inputValue= nodes fifth third inputValue
			ifTrue: [ nodes ]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]
		
	map: [:_nodes|
		| retval retArr |
		retval := (_nodes fourth asOrderedCollection).
		retArr:= Array with: _nodes first with:_nodes second with:_nodes third with:retval with:_nodes fifth.
		retArr
		
	]