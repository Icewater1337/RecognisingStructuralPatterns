generating
generateParser
	^ (self actionOn: self generate)
		name: self name;
		yourself