elements
inlineText
	^gravis, (headerElement/bold/htmlBlockQuote/hyperlink/italic/listing/underline/#letter asParser trim)plus , gravis ==> [ :nodes|
		nodes first = nodes third
		ifTrue:[Array with: nodes first with: nodes second with: nodes third]
		ifFalse:[PPFailure message:'Expected same sign'] ]