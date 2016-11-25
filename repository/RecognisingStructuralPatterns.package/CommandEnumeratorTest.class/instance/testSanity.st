as yet unclassified
testSanity
	|keys arguments|
	keys := {  StringGenerator identifier }.
	arguments:= { ListGenerator new generateParser }.

	enumerator := ((CommandEnumerator new)
		keys: keys;
		arguments: arguments;
		yourself).
		
	self assert: enumerator enumerate anySatisfy: [ :p | p end matches: 'asd[a,a,a]' ].