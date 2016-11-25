generating
generate
	^ begin, ((escape,begin) / end negate) star token, end
	