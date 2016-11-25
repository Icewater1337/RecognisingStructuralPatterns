statements
forEachStmt1
	^forEach, space star, '(' asParser, in negate star, in, ')' asParser negate star, ')' asParser, space star, block
" as Seen in c#"