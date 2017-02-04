enumeration
generate
	|stringFactoryList|
	
	stringFactoryList := OrderedCollection new.
	begins generate do: [ :beg | 
		ends generate do: [ :en | 
			(self presort: beg end: en)
				ifTrue:[
			escapes generate do: [ :escap | 
				stringFactoryList add: ((StringParserFactory new)
					begins: beg generateParser;
					end: en  generateParser;
					escape: escap generateParser;
					yourself) ]] ] ].

	^ stringFactoryList collect: #generateParser