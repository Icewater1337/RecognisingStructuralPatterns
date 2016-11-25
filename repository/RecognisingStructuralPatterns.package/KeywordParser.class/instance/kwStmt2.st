parsers
kwStmt2
	^ newline, keyword, newline ==> [ :str | str second ]