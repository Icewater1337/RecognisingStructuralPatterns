as yet unclassified
allChildrenInto: aCollection
	
	aCollection add: self.
	self children do: [ :child | child allChildrenInto: aCollection ].
	
	^ aCollection