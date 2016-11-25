AST
object
	^ super object ==> [ :elt | (
		ObjectNode new
			children: (Array with: elt second first first with: elt third) )
			yourself ]