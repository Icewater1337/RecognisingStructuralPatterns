as yet unclassified
testSanity
	|keys arguments|
	keys := {  StringGenerator identifier }.
	arguments:= { ListGenerator new }.

	enumerator := ((CommandEnumerator new)
		keys: keys;
		arguments: arguments;
		yourself).
		
	self assert: enumerator enumerate anySatisfy: [ :p | p matches: 'asd(a,a,a)' ].