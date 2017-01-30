*RecognisingStructuralPatterns
isGeneratorArgument
	self flag: 'this is hack, should be removed once the architecture is stabilized'.
	^ self allSatisfy: [ :e | e respondsTo: #generateParser ]