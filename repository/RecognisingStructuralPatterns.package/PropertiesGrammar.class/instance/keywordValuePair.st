elements
keywordValuePair
	^ (newline negate and, $: asParser negate and, $=  asParser negate)plus trim flatten, ($: asParser trim / $= asParser trim), newline negate star