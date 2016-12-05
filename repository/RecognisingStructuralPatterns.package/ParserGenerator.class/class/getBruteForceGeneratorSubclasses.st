arithmetic
getBruteForceGeneratorSubclasses
	^(self getSubclasses) removeAllSuchThat: [ :e | (e new isParserGenerator not) ]
	
	