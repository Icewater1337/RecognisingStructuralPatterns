statements
ifStmt1
	^if, space star, '(' asParser, ')' asParser negate star, ')' asParser, block
"as seen in c, c#, java, c++ etc.."