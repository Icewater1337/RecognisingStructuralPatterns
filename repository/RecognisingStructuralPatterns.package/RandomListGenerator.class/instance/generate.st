as yet unclassified
generate
|listGeneratorList listGen|
listGeneratorList := OrderedCollection new.
begin do: [ :beg | 
	end do: [ :en | 
		delimiter do: [ :del | 
			listGeneratorList add: ((ListGenerator new)
				begin: beg;
				end: en;
				delimiter: del;
				yourself) ] ] ].

^ listGeneratorList