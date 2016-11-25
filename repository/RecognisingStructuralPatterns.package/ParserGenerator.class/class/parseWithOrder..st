parsing
parseWithOrder: input
	|orderList parsedResults sortedResults|
	
	"still have to remove non nodes."
	
	orderList := OrderedCollection new.
	parsedResults := OrderedCollection new.
	sortedResults := SortedCollection sortBlock: [:c1 :c2 | c1 childCount >= c2 childCount]. 
	
	"dont rate lists with only one element somehow"
	
	parsedResults := self parse: input.
	
	" get all children of a result"
	
	parsedResults do: [  : result | 
		|relevantChildrenNbr|
		relevantChildrenNbr:= 0.
		
		(result isKindOf: Node)
		ifTrue:[
		(result gatherAllChildren) do:[ :elt |
		(elt isTag= true)
		ifTrue:[relevantChildrenNbr:= relevantChildrenNbr +2]
		ifFalse:[
		((elt isKindOf: RawText) &(elt isSea = false))
				ifTrue:[ relevantChildrenNbr:= relevantChildrenNbr +1.].
		(elt isKindOf: Element)
			ifTrue:[
				(((elt name alike: 'LIST' )>=4) &((elt children size) = 1))
					ifFalse:[relevantChildrenNbr:= relevantChildrenNbr +1.]
				].
			]]. 
		result childCount: relevantChildrenNbr.
		sortedResults add: result.
		]
		].
	
	
	^ sortedResults.
	
	
	

