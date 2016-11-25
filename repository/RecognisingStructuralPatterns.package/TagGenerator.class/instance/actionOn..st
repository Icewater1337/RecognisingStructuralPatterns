generating
actionOn: parser
	^ parser ==> [ :e | 
		|elt|
		elt:= Element new.
			e fifth first isNil
			ifTrue: [ "elt addChild: e fifth second."
				elt name: e second inputValue.]
			ifFalse:[ elt children: e fifth.
				elt name: e second inputValue.] ]
						
			" had to add this, because somehow an array with nil and raw text gets returned when it parses asd( since (generator selfReference not, NilGenerator whatever ) /((generator selfReference)star).) doesnt consume the input"
			
						