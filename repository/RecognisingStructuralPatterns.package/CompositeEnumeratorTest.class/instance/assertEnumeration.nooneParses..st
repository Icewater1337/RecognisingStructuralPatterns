asserting
assertEnumeration: name nooneParses: input
	^ self assert: (enumerator enumerationNamed: name) noneSatisfy: [ :p | p end matches: input ]