accessing
generate
	^(self productionNamed: #stringOrTag )generate
		collect: [ :e | e nonEmpty star ].
		