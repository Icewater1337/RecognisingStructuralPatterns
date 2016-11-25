generating
generateParser
	| return |
	
	selfReference setParser: (self actionOn: self generate).
	return := selfReference.
	"
		dirty hack? After giving up on the reference of the parser, reset the selfReference to the new one, 
		so that it is not reused.
	"
	self reset.
	
	^ return
	