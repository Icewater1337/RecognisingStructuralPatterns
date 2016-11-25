statements
ifStmt4
	^if, space star,then negate star, then asParser, roundBracketsBlock, (space star, else , roundBracketsBlock) optional
"as seen in Maxima"
" if expr then ( statement) else (more statements)"