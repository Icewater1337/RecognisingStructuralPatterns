generating
generate
	^ begin, ((((':' asParser/end/ '=' asParser) negate star) token, ':' asParser, (#letter asParser star)token ) /((#word asParser plus) token)),(end negate star )token, end trim, element optional, begin trim,  endTagSymbol, ((((':' asParser/end/ '=' asParser) negate star) token, ':' asParser, (#letter asParser star)token ) /((#word asParser plus) token)),end trim
	==> [ :nodes| 
		
		nodes second inputValue= (nodes at:8) inputValue
			ifTrue: [ nodes ]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]
		
	map: [:_nodes|
		| retval retArr |
		retval := (_nodes fifth asOrderedCollection).
		retArr:= _nodes.
		retArr at: 5 put: retval.
		retArr
		
	]