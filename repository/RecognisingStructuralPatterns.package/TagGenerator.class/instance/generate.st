generating
generate
	self assert: element isNullable not.

	^ (begin, 
			tagName, 
	  end trim) wrapped, 
		element nonEmpty star,
	(begin trim,  endTagSymbol, 
		tagName, 
	end trim) wrapped

	map: [ :_open :_content :_close | 
		_open second = _close third
			ifTrue: [ { _open . _content . _close } ]
			ifFalse: [PPFailure message: 'Expected same keyword'] 
	]