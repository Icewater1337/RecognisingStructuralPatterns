enumeration
presort: begn end: enn
"the first two are a dirty dirty hack. to change"
	(begn asString = '<?') & (enn asString = '?>')
		ifTrue:[^true].
	(begn asString = '<') & (enn asString = '/>')
		ifTrue:[^true].
	(begn asString = enn asString)
		ifTrue:[^true]
		ifFalse:[^false]