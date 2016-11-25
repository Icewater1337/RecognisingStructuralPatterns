statements
ifElseStmt1
	^space star, '?'asParser negate star, '?' asParser, ':' asParser negate star, ':' asParser, newline negate star
"as seen in java"
"int u = condition ? thenexpr : elseexpr;"
	" not working as intended yet. have to fix"