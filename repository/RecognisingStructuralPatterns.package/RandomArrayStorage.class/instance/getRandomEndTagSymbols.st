as yet unclassified
getRandomEndTagSymbols
	| randOpen |
	randOpen:=OrderedCollection withAll:#('/' '\' '?' '!').
		^ randOpen.