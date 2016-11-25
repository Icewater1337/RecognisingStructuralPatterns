as yet unclassified
generate
	|listGeneratorList|
	
	listGeneratorList := OrderedCollection new.
	begins do: [ :beg | 
		ends do: [ :en | 
			delimiters do: [ :del | 
				elements do: [ :el |
					| generator |
					generator := ListGenerator new.
					generator
						begin: beg;
						end: en;
						delimiter: del;
						element: (el deepResolve: generator);
						yourself.

				listGeneratorList add: generator
	] ] ] ].

	^ listGeneratorList