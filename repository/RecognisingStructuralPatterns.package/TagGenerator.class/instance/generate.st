generating
generate
	^ (begin, ((((':' asParser/end/ '=' asParser) negate star) flatten, ':' asParser, (#letter asParser star)flatten ) /((#word asParser plus) flatten)),end trim), element trim, (begin, endTagSymbol, ((((':' asParser/end/ '=' asParser) negate star) flatten, ':' asParser, (#letter asParser star)flatten ) /((#word asParser plus) flatten)),end trim) 
	==> [ :nodes| 
		nodes second = nodes fifth third
			ifTrue: [ nodes ]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]
		
	map: [:_nodes|
		| retval retArr |
		retval := (_nodes fourth asOrderedCollection).
		retArr:= Array with: _nodes first with:_nodes second with:_nodes third with:retval with:_nodes fifth.
		retArr
		
	]