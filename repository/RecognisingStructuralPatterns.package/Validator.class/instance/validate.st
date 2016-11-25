as yet unclassified
validate
| visitor output precision recall precisionRecallCollection retVal |

	" in case the result didnt parse correctly"
	(result isKindOf: Node)
		ifFalse:[	retVal:= (ResultNode new)
			node: result;
			precision: 0;
			recall: 0;
			f1score:'Not available';
			yourself]
		ifTrue:[
	precisionRecallCollection:= 	OrderedCollection new.


	visitor:= ExportVisitor new. 
	output := (visitor visit: result) output.
	precision := self getPrecision: output.
	recall:= self getRecall: output.
	
	retVal:= (ResultNode new)
			node: result;
			precision: precision;
			recall: recall;
			f1score: (self getF1Score: precision recall: recall);
			yourself].
	

^ 	retVal
		
