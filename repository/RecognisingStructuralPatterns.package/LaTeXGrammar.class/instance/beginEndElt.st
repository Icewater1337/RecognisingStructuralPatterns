elements
beginEndElt
	^backslash, begin, bracketsElement,"this has to be done" (((texStmt / newline / simpleTextLine )/(backslash negate))star), backslash, end, bracketsElement ==> [:nodes| 
		nodes third second = nodes seventh second
			ifTrue: [Array with: nodes first with: nodes second with: nodes third with: nodes fourth with: nodes fifth with: nodes sixth]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]
		
	"state that the tex stmt can not be \end the first statement"