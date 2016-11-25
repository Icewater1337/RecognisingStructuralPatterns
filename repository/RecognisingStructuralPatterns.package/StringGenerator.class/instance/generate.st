generating
generate
	| any |
	any := #any asParser.
	
	^ begin, (end not, (escape / any)) star flatten, end
	
"this method created the actual parser for the element"