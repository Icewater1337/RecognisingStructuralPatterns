statements
xmlElement
	^startTag trim, content, endTag trim 
	==> [ :nodes| 
		nodes first second = nodes third second
			ifTrue: [ nodes ]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]