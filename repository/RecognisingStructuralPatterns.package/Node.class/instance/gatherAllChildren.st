as yet unclassified
gatherAllChildren
	|allElements|
	allElements:= OrderedCollection new.
	allElements add: self.
	self children do: [ :child | allElements addAll: (child gatherAllChildren).].
	
	^allElements