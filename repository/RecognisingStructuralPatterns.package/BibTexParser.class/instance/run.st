as yet unclassified
run
	^ super run ==> [ :element |
		 (Element new) 
			addChild: element second;
			name:'__ROOT__';
			yourself ]