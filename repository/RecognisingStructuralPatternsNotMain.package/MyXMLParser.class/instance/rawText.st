AST
rawText
	^ super rawText ==> [ :e | (RawText new )
		contents: e]