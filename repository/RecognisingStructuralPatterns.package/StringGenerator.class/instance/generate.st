generating
generate
	| any |
	any := #any asParser.
	
	^ begin, (escape / end negate) star flatten, end
	
"this method created the actual parser for the element"