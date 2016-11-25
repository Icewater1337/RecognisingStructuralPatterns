enumeration
generate
	| retval |
	enumerating ifFalse: [
		enumerating := true.
		retval := (receiver perform: selector) generate.
		enumerating := false.
		retval do: [ :p |  p deepResolve:  (selector -> p) ].
		^ retval
	] ifTrue: [  
		"already enumerating, recursion?"
		^ { NamedReferenceGenerator named: selector }
	]