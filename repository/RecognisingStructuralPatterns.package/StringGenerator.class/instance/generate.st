generating
generate
	^ begin, (escape / end negate) star token, end
	