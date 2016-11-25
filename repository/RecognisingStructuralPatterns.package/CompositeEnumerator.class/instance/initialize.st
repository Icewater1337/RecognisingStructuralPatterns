as yet unclassified
initialize
	| variables reference |
	super initialize.
	enumerations := IdentityDictionary new.
	variables := self productions.
	
	variables do: [ :name | 
		reference := EnumeratorReference new
			receiver: self;
			selector: name;
			yourself.
		self instVarNamed: name put: reference.
	]