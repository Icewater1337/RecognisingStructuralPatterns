as yet unclassified
visitElement: node
	self output: node name.

	stack push: node name.
	super visitElement: node.
	stack pop
