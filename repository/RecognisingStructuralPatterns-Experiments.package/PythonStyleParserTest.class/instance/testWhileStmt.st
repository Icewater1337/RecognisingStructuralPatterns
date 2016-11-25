testMethods
testWhileStmt
	self parse: '
	while stuff:
		do a lot of stuff
		
		we dont care for this stuff
	' rule: #whileStmt.