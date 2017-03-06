accessing
singleLineTag
"workaround, shouldnt be like this. challenge?"
	|start end |
	start:= $< asParser.
	end:= '/>' asParser.
	
	^ {(start trim, ((end / $> asParser) negate star)flatten, end trim)==> [ :e |
		(RawText new)
			contents: e second;
			weight:0;
			yourself]}