elements
nameValuePair
	^(('=' asParser negate and, '}' asParser negate )star) flatten, '=' asParser trim, #newline asParser negate star, #newline asParser
	
	
	"('{' asParser, (#word asParser star) flatten, '=' asParser trim, '}' asParser negate star, '}' asParser)	/(#word asParser star) flatten, '=' asParser trim, ',' asParser negate star, ',' asParser optional"