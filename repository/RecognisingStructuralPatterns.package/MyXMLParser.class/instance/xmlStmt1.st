statements
xmlStmt1
	^startTag trim, content, endTag trim  ==> [ :nodes| 
		nodes first second = nodes third second
			ifTrue: [Array with: nodes first with: nodes second with: nodes third]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]