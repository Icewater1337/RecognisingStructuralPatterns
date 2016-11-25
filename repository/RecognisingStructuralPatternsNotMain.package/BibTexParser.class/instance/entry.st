as yet unclassified
entry
	^super entry ==> [ :element |
		"|retval|
		retval := (element fifth asOrderedCollection).
		retval add: element fourth."
		(Element new) 
			name: element second, ':', element fourth first ;
			children: element fifth;
			yourself ]