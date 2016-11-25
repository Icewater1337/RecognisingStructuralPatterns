generating
generate
	| any |
	any := #any asParser.
	
	^ begin, (escape / end negate) star token, end
	
"token has inputValue and a position. parser:= (#word asParser star) token.

parser parse:'hallo'. see this."