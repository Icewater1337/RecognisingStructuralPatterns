as yet unclassified
getF1Score: prec recall: rec
	^((prec+rec) = 0)
		ifTrue:['Not available'] 
		ifFalse:[(((prec * rec ) *2) / ( prec + rec)) asFloat round:3].




