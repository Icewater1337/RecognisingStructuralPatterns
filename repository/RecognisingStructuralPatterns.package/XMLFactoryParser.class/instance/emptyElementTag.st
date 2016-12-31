accessing
emptyElementTag
	|start end |
	start:= $< asParser.
	end:= '/>' asParser.
	
	^start trim, ((end / $> asParser) negate star)flatten, end trim ==> [ :e |
		(RawText new)
			contents: e second;
			yourself]