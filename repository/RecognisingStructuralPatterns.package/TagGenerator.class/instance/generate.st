generating
generate
	^ (begin, ((((':' asParser/end/ '=' asParser) negate star) flatten, ':' asParser, (#letter asParser star)flatten ) /((#word asParser plus) flatten)),end), element, (begin, endTagSymbol, ((((':' asParser/end/ '=' asParser) negate star) flatten, ':' asParser, (#letter asParser star)flatten ) /((#word asParser plus) flatten)),end) 
	==> [ :nodes| 
		nodes second = nodes fifth third
			ifTrue: [ nodes ]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]