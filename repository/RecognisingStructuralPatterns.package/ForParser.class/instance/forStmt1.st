statements
forStmt1
	^for, space star, '(' asParser,  ')' asParser negate star, ')' asParser, space star, block
" as Seen in c, c++, java etc. for(expr){stmt}"