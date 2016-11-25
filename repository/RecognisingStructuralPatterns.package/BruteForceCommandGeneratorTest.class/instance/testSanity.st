as yet unclassified
testSanity
	|keys arguments|
	keys := {  StringParserFactory identifier }.
	arguments:= { ListParserFactory new generateParser }.

	enumerator := ((BruteForceCommandGenerator new)
		keys: keys;
		arguments: arguments;
		yourself).
		
	self assert: enumerator generate anySatisfy: [ :p | p end matches: 'asd[a,a,a]' ].