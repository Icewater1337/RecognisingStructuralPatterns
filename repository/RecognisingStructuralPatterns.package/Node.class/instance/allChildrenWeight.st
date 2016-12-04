accessing
allChildrenWeight
	^ (self allChildren) inject: 0 into: [:sum :child | 
		sum + (child weight) ] 