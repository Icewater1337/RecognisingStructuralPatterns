statements
ifStmt3
	^if, space star,then negate star, then asParser, ((endif negate star, endif)  /( 'end' asParser negate star, 'end' asParser))
"as seen in Fortan"
"If expr then expr else expr endif"
"or similar as seen in lua
if expr then expr else expr end
this just parses elses too, not clear on how to handle them"