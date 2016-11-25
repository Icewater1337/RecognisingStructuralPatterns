elements
bold
	^('__' asParser trim / '**' asParser trim) trim,(headerElement/htmlBlockQuote/hyperlink/inlineText/italic/listing/underline/#letter asParser trim) plus, ('__' asParser / '**' asParser) trim "==>[:nodes |
		 nodes first = nodes third
		ifTrue: [Array with: nodes first with: nodes second with: nodes third]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]"