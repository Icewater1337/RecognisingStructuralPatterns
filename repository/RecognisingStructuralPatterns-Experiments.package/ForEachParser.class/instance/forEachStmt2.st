statements
forEachStmt2
	^for, space star, '(' asParser, ':' asParser negate star, ':' asParser, ')' asParser negate star, ')' asParser, #space asParser star, block
" as Seen in java"