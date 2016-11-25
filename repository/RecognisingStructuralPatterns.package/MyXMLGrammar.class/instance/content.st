statements
content
	^(	openFileTag / 
		rawText trim/ 
		xmlElement / 
		comment / 
		emptyElementTag
	) star