outputting
output: string
	(string = '__ROOT__')
	ifFalse:[
	buffer add: stack top, '->', string]