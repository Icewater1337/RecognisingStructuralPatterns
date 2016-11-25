as yet unclassified
testIfStmt4
	self parse: 'if a[i] <b[j] then (
	c: endcons(a[i], c), 
	i: i+1)' rule: #ifStmt4.
	
	self parse:'if expression asd then (do stuff) else (do other stuff)' rule:#ifStmt4