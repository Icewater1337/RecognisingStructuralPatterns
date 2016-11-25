statements
ifStmt5
	^if, space star, '(' asParser, ',' asParser negate  star, ',' asParser, ')' asParser negate star, ')' asParser, ';' asParser

"as seen in PARI/GP (if(condition, stmt);"