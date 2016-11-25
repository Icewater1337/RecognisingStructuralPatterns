as yet unclassified
testComment
	self parse:'//test'rule:#comment.
	self assert: result contents equals:'test'.
	self parse:'/*test*/' rule:#comment.
	self assert: result contents equals:'test'.