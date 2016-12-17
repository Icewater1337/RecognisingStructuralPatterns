as yet unclassified
testComment
	self parse:'<!-- comment -- -->' rule:#comment.
	self fail:'<!-- comment--> -->' rule:#comment.