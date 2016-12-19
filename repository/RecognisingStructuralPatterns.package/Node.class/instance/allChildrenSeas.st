accessing
allChildrenSeas
	^ (self allChildren) inject: 0 into: [:sum :child | 
		child isSea
		ifTrue:[sum + 1 ]
		ifFalse:[sum]]. 