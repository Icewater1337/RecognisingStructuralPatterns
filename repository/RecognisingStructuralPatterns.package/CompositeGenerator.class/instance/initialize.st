as yet unclassified
initialize
	| reference |
	super initialize.
	
	enumerations := IdentityDictionary new.
	
	self productions do: [ :name | 
		reference := GeneratorReference new
			receiver: self;
			selector: name;
			yourself.
		self instVarNamed: name put: reference.
	]