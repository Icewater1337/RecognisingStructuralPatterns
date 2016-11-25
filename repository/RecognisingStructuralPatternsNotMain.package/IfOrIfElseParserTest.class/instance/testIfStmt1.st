as yet unclassified
testIfStmt1
	self parse: 'if(expression) { 
	do stuff }' rule: #ifStmt1.
	
	self parse: 'if(expression){
		do stuff} 
		else {
			do more stuff}' rule:#ifStmt1