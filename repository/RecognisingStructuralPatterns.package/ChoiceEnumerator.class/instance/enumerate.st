accessing
enumerate
	| collection |
	collection := OrderedCollection new.
	first enumerate do: [ :one |
		second enumerate do: [ :two |
		collection add: one generateParser / two generateParser		
	]].

	^ collection