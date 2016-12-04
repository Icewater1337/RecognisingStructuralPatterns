accessing
generate
	^ (self productionNamed: #command )generate
			collect: [ :e | e nonEmpty star ]
	