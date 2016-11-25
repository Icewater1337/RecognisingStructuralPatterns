as yet unclassified
initialize
	| variables reference |
	super initialize.
	variables := self class instVarNames.
	variables do: [ :name | 
		reference := EnumeratorReference new
			receiver: self;
			selector: name;
			yourself.
		self instVarNamed: name put: reference.
	]