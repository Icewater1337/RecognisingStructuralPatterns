AST
rawText
	^ super rawText ==> [ :e | (RawText new )
		name: e]