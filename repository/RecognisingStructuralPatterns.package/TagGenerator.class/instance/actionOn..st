generating
actionOn: parser
	^ parser ==> [ :e | 
		|elt|
		elt:= Element new.
			e fourth first isNil
			ifTrue: [ elt addChild: e fourth second.
				elt name: e second.]
			ifFalse:[ elt children: e fourth.
				elt name: e second.]
			
			" had to add this, because somehow an array with nil and raw text gets returned when it parses asd( since (generator selfReference not, NilGenerator whatever ) /((generator selfReference)star).) doesnt consume the input"
			
						
	]