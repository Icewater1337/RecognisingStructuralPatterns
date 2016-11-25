generating
generateParser
	selfReference setParser: (self actionOn: self generate).
	^ selfReference
	