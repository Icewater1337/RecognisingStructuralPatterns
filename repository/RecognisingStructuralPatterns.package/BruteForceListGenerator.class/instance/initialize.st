initialization
initialize
	super initialize.
	
	delimiters := self class defaultDelimiters.
	elements := self class defaultElements.
	begins :=  self class defaultBegins.
	ends := self class defaultEnds.