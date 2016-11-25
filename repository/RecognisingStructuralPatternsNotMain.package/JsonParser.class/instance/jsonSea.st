AST
jsonSea
	^super jsonSea 
	
	"map: [:_object :_nameValuePair |
		| el |
		el := Element new.
		_object isNil ifFalse: [  
			el children add: _object.
		].
		el children add: _nameValuePair.
		el name: el first second.
		el
	]"
	