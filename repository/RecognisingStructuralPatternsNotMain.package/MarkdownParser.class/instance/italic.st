elements
italic
	^(asterisk / underscore) trim, (#space asParser /headerElement/bold/htmlBlockQuote/hyperlink/inlineText/listing/underline/#letter asParser) trim plus, (asterisk/underscore) trim ==>[:nodes |
		 nodes first = nodes third 
		ifTrue: [Array with: nodes first with: nodes second with: nodes third]
			ifFalse: [PPFailure message: 'Expected same keyword'] ]