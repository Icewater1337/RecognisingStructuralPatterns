accessing
generate
	|par|
	par:=(self productionNamed: #stringOrTag )generate
		collect: [ :e | e nonEmpty star  ==> [ :el| 
				(el size > 0)
				ifTrue: [  (Element new)
					name:'__ROOT__';
					children: el;
					weight:0;
					parserFactory: (e nonEmpty star);
					yourself.]
				ifFalse:[#failure].
	]].
	^par
		