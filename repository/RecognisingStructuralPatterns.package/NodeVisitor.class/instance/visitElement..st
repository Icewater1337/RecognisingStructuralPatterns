as yet unclassified
visitElement: node
	node children do: [ :child | 
		self visit: child	
	]