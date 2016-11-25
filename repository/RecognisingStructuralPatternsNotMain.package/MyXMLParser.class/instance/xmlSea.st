AST
xmlSea
	^ super xmlSea
	
	map: [:_openFileOrNil :_xmlElement |
		| el |
		el := Element new.
		_openFileOrNil isNil ifFalse: [  
			el children add: _openFileOrNil.
		].
		el children add: _xmlElement.
		el name: '__root__'.
		el
	]
	