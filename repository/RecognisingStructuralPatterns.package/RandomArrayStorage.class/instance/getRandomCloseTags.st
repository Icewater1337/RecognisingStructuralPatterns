as yet unclassified
getRandomCloseTags
	| randClose randSignsForClose randCloseMix |
	randClose:= OrderedCollection withAll:#(')' '}' ']' '>').
	randSignsForClose:= OrderedCollection withAll:#('/' '\' '?' '!' '--' '--!').
	randCloseMix:= OrderedCollection new.

	randClose do: [ :e |randCloseMix add: e. randSignsForClose do: [ :elt| randCloseMix add: (elt, e) ]].
	^randCloseMix.