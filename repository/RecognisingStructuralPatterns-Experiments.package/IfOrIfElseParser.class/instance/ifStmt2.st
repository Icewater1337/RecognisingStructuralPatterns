statements
ifStmt2
	^if, space star, '(' asParser, ')' asParser negate star, ')' asParser, noBracketsBlock
"as seen in c, c++, java, c# with only one line ifs"