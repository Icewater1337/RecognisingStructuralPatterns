as yet unclassified
getRandomOpenTags
	| randOpen |
	randOpen:= OrderedCollection withAll:#('(' '{' '[' '<').
		^ randOpen.