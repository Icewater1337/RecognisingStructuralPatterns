as yet unclassified
parseWithOrder: input
	|orderList parsedResults sortedResults|
	self deprecated:' have to remove non nodes'.
	"still have to remove non nodes."
	
	orderList := OrderedCollection new.
	parsedResults := OrderedCollection new.
	sortedResults := SortedCollection sortBlock: [:c1 :c2 | c1 childCount >= c2 childCount]. 

	
	parsedResults := self parse: input.
	
	parsedResults do: [ :result | result countChildren].
	
	sortedResults addAll: parsedResults.
	^ sortedResults.
	
	
	

