accessing
generate
	|parser|
	parser:=(self productionNamed: #stringOrTag )generate
		collect: [ :e | e nonEmpty star ].
	^parser
	