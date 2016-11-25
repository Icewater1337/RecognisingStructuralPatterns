as yet unclassified
testBlock
	self parse: '{}' rule: #block.
	self parse: '{...}' rule: #block.
	self parse: '{ {..} }' rule: #block.
	self parse: '{ {} { }  }' rule: #block.	