accessing
generate
	|par|
	par:=(self productionNamed: #command )generate
		collect: [ :e | e nonEmpty star  ==> [ :el| 
				
				(el size > 1)
				ifTrue: [  (Element new)
					name:'__ROOT__';
					children: el;
					weight:0;
					parserFactory: (e nonEmpty star);
					yourself.]
				ifFalse:[
					(el size = 0)
						ifFalse:[el first]
						ifTrue:[#failure]].
	]].
	^par
		