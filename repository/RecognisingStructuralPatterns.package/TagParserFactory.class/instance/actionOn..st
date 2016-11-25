generating
actionOn: parser
	^ parser ==> [ :e | 
		|elt|
		elt:= Element new.
		elt name: e first second inputValue.
		elt children: e second.
	]
						
			" had to add this, because somehow an array with nil and raw text gets returned when it parses asd( since (generator selfReference not, NilGenerator whatever ) /((generator selfReference)star).) doesnt consume the input"
			
						