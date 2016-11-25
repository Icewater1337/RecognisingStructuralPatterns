accessing
children: newChildren
	self assert: (newChildren isCollection).
	self assert: (newChildren allSatisfy: [ :e | e isKindOf: Node ]).
	children := newChildren