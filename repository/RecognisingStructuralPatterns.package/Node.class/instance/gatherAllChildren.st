as yet unclassified
gatherAllChildren
	|allElements|
	self deprecated:'use allChildren now and allChildrenWeight'.
	allElements:= OrderedCollection new.
	allElements add: self.
	self children do: [ :child | allElements addAll: (child gatherAllChildren).].
	
	^allElements