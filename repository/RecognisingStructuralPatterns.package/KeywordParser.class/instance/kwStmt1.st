parsers
kwStmt1
	^ space, keyword, space, word / block ==> [ :str | str second ]