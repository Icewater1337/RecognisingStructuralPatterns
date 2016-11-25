statements
ifStmt2
	^if, space star, roundBracketsBlock, blank star, newline optional, oneLineBlock, newline optional, space star, (elseBlock1 / elseBlock2) optional
"as seen in c, c++, java, c# with only one line ifs"