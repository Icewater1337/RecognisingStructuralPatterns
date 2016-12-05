arithmetic
getSubclassesInto: aCollection
	
	aCollection add: self.
	self subclasses do: [ :child | child getSubclassesInto: aCollection ].
	
	^ aCollection