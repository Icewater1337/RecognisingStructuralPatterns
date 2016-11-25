as yet unclassified
enumerationNamed: name
	^ enumerations at: name ifAbsentPut: [ 
		(self productionNamed: name) generate
	]