elements
jCardObject
	^'[' asParser trim , (']' asParser negate and, string / object/ jCardObject, ',' asParser trim optional) star, ']' asParser trim