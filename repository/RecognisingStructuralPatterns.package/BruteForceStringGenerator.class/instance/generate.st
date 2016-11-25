as yet unclassified
generate
|stringGeneratorList|
stringGeneratorList := OrderedCollection new.
begin do: [ :beg | 
	end do: [ :en | 
		escape do: [ :escap | 
			stringGeneratorList add: ((StringGenerator new)
				begin: beg;
				end: en;
				escape: escap;
				yourself) ] ] ].

^ stringGeneratorList