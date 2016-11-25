as yet unclassified
run
	^ super run ==> [ :element |
		 (Element new) 
			children: element;
			name:'__ROOT__';
			yourself ]