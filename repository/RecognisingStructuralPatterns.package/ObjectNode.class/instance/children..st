as yet unclassified
children: newChildren
	self assert: (newChildren allSatisfy: [ :e | e isKindOf: JsonNode ]).
	children := newChildren