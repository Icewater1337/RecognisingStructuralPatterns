as yet unclassified
countRelevantElements
 |childNbr| 
	childNbr:= 0.
	self children isEmpty 
		ifFalse:[ 
			(((self name alike: 'LIST' )>=4) &((self children size) = 1))
			ifTrue:[self childCount: childNbr.
				^childNbr]
			ifFalse:[		
				self children do: [ :child | childNbr := (child countRelevantElements)].
				childNbr := childNbr + 1.
				self childCount: childNbr.
				^childNbr]]
		ifTrue:[ self childCount: 1.
			^self childCount.]