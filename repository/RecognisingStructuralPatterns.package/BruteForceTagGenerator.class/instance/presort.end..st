enumeration
presort: begn end: enn
	(begn asString = '(')
		ifTrue:[
			(enn asString =')')
				ifFalse:[^false]
				].
	 (begn asString ='[')
		ifTrue:[
			(enn asString =']')
				ifFalse:[^false]
				].
	 (begn asString  ='{')
		ifTrue:[
			(enn asString  ='}')
				ifFalse:[^false]
				].
	 (begn asString  = '<')
		ifTrue:[
			(enn asString  ='>')
				ifFalse:[^false]
				].
	^ true