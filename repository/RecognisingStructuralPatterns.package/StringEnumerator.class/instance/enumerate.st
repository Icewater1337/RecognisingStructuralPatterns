enumeration
enumerate
	|stringGeneratorList|
	
	stringGeneratorList := OrderedCollection new.
	begin enumerate do: [ :beg | 
		end enumerate do: [ :en | 
			escape enumerate do: [ :escap | 
				stringGeneratorList add: ((StringGenerator new)
					begin: beg generateParser;
					end: en  generateParser;
					escape: escap generateParser;
					yourself) ] ] ].

	^ stringGeneratorList collect: #generateParser