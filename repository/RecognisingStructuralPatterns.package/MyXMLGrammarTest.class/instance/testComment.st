as yet unclassified
testComment
	self parse:'<!-- this is a valid comment - -->' rule: #comment.
	self fail:'<!-- this is not a valid comment -- because of this -->' rule:#comment.