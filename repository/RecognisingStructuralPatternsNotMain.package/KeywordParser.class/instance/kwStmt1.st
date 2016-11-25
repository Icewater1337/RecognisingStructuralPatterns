parsers
kwStmt1
	^  keyword trim, (word / block) ==> [ :str | str first ]