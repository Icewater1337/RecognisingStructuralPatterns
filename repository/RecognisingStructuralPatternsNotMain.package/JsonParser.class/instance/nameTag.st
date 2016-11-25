AST
nameTag
	^super nameTag ==> [ :elt |
		(RawText new)
		name: elt second;
		yourself]