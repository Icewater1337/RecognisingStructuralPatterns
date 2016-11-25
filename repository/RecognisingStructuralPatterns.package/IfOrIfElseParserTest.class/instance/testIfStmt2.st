as yet unclassified
testIfStmt2
	self parse: 'if(expression) do stuff ' rule: #ifStmt2.
	self parse: 'if(expression) 
		do stuff' rule: #ifStmt2.
	
	self parse:'if(expression) 
		dostuff
	else
		domorestuff' rule:#ifStmt2.
	self fail: 'if(expression) 
	do stuff 
this should not get parsed' rule: #ifStmt2.