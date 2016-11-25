as yet unclassified
testStmt
	self parse: 'while (random condition) {
	do random stuff }' rule: #stmt.
	self parse:'for ( random condition) { 
	do random stuff }' rule:#stmt.
	self parse:'if(random condition) { 
	do random stuff }' rule:#stmt.