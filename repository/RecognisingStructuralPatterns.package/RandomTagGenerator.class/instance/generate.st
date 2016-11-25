as yet unclassified
generate
|tagGeneratorList|
tagGeneratorList := OrderedCollection new.
begin do: [ :beg | 
	end do: [ :en | 
		endTagSymbol do: [ :endTagSymb | 
			tagGeneratorList add: ((TagGenerator new)
				begin: beg;
				end: en;
				endTagSymbol: endTagSymb;
				yourself) ] ] ].

^ tagGeneratorList