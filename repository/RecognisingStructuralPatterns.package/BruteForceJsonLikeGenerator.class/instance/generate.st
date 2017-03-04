accessing
generate
	|par|
	par:=(self productionNamed: #outerList )generate
		collect: [ :e | e nonEmpty star  ==> [ :el| 
			(el size > 0)
				ifTrue: [  (Element new)
					name:'__ROOT__';
					children: el;
					weight:0;
					yourself.]
				ifFalse:[#failure]]].
	^par
	