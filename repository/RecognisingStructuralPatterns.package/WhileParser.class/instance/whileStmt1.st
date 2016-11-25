statements
whileStmt1
	^while, space star, '(' asParser,  ')' asParser negate star, ')' asParser, space star, block
" as Seen in c, c++, java etc. while(expr){stmt}"