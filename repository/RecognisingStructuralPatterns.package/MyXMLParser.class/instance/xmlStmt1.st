statements
xmlStmt1
	^startTag, #word asParser star trim, endTag ==> [ :nodes| 
		nodes first second = nodes third second
			ifTrue: [Array with: nodes first with: nodes second with: nodes third]
			ifFalse: [PPFailure message: 	'Expected same keyword']]
