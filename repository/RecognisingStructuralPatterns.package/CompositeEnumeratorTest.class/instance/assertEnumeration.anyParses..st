asserting
assertEnumeration: name anyParses: input
	^ self assert: (enumerator enumerationNamed: name) anySatisfy: [ :p | p end matches: input ]