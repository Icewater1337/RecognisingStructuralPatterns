as yet unclassified
getPrecisionRecall
|parsedResults visitor output precision recall precisionRecallCollection|
parsedResults := OrderedCollection new.
precisionRecallCollection:= OrderedCollection new.
results do: [ :result | (result isKindOf: Node)
	ifTrue:[parsedResults add: result]
	ifFalse:[] ].

parsedResults do: [ :parsedResult | visitor:= ExportVisitor new. 
	output := (visitor visit: parsedResult) output.
	precision := self getPrecision: output.
	recall:= self getRecall: output.
	precisionRecallCollection add: (
		(ResultNode new)
			node: parsedResult;
			precision: precision;
			recall: recall;
			yourself
		)
	].

^ precisionRecallCollection

"return list with ResultNode which has an element and its precision / recall"