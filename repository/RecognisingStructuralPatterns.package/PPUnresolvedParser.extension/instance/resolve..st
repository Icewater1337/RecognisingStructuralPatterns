*RecognisingStructuralPatterns
resolve: assoc
	^ (assoc key == self referenceName) ifTrue: [
		self def: assoc value
	] ifFalse: [  
		self
	]