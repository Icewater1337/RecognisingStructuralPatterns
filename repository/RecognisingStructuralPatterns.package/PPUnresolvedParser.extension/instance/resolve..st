*RecognisingStructuralPatterns
resolve: assoc
	^ (assoc key class == self generatorClass) ifTrue: [
		self def: assoc value
	] ifFalse: [  
		self 
	]