as yet unclassified
testBlock
	self parse:'(aa)' rule:#block. 
	
	self parse:'[aa]' rule:#block .

	self parse:'{aa}' rule:#block.