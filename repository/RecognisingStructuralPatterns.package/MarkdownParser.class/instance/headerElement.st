elements
headerElement
	^ hashSign plus trim, (bold/htmlBlockQuote/hyperlink/inlineText/italic/listing/underline/#letter asParser trim) plus