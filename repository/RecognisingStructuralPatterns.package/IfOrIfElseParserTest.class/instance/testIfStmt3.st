as yet unclassified
testIfStmt3
	self parse: 'if expression then
	do stuff
endif' rule: #ifStmt3.

	self parse: 'if expression then 
		do stuff
	end' rule:#ifStmt3.