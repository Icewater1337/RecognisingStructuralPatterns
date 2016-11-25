asserting
assertEnumeration: name anyParses: input
	^ self assert: (enumerator enumerationNamed: name) anySatisfy: [ :p | p matches: input ]