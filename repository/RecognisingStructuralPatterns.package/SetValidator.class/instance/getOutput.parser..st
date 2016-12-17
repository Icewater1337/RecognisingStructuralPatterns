as yet unclassified
getOutput: aString parser: aParser
	|visitor output result|
	
	result:= aParser parse: aString.
	
	visitor:= ExportVisitor new. 
	output := (visitor visit: result) output.
	
	^output.