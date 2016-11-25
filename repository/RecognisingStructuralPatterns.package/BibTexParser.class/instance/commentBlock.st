elements
commentBlock
	^ '@Comment{' asParser
		, ('@' asParser negate and , '}' asParser negate) star
		, '}' asParser