accessing
generate
	| collection |
	collection := OrderedCollection new.
	first generate do: [ :one |
		second generate do: [ :two |
		collection add: one generateParser / two generateParser		
	]].

	^ collection