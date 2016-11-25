as yet unclassified
countChildren
 |childNbr| 
	childNbr:= 0.
	self children isEmpty 
		ifFalse:[ self children do: [ :child | childNbr := (child countChildren)].
			childNbr := childNbr + 1.
			self childCount: childNbr.
			^childNbr]
		ifTrue:[ self childCount: 1.
			^self childCount]