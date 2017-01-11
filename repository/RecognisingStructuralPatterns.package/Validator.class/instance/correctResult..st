accessing
correctResult: anObject
	"|visitor output|
	visitor:= ExportVisitor new. 
	output := (visitor visit: anObject) output.
	correctResult:= output"
	correctResult:=anObject.