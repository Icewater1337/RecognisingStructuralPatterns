as yet unclassified
parseWithOrder: input
	|orderList parsedResults sortedResults|
	
	"still have to remove non nodes."
	
	orderList := OrderedCollection new.
	parsedResults := OrderedCollection new.
	sortedResults := SortedCollection sortBlock: [:c1 :c2 | c1 childCount >= c2 childCount]. 

	
	parsedResults := self parse: input.
	
	parsedResults do: [ :result | (result isKindOf: Node)
		ifTrue:[result countChildren.
			sortedResults add: result]].
	
	^ sortedResults.
	
	
	

