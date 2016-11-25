as yet unclassified
extract
	|retarr|
	retarr:= OrderedCollection new.
	
	 ^(signOfNoInterest star, signOfNoInterest negate) star 
	
	map: [ :_contents |
		_contents do: [ :_elt| 	(retarr indexOf:( _elt second)) == 0 ifTrue:[ (retarr add: _elt second).]
		 ].
	retarr.
	]
	