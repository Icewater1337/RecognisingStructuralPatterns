enumeration
generate
	|stringGeneratorList|
	
	stringGeneratorList := OrderedCollection new.
	begin generate do: [ :beg | 
		end generate do: [ :en | 
			escape generate do: [ :escap | 
				stringGeneratorList add: ((StringParserFactory new)
					begin: beg generateParser;
					end: en  generateParser;
					escape: escap generateParser;
					yourself) ] ] ].

	^ stringGeneratorList collect: #generateParser