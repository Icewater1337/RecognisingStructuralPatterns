statements
ifStmt3
	^if, space star,then negate star, then asParser, 'endif' asParser negate star, 'endif' asParser
"as seen in Fortan"
"If expr then expr else expr endif"