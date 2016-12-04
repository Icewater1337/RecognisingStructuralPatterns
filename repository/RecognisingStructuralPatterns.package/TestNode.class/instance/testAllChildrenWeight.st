tests
testAllChildrenWeight
	|string parser result|
	string:= '<a>
		<b>c</b>
	</a>'.
	
	parser:= BruteForceTagOfTagsGenerator getParsers: string.
	
	result:= (parser at:1) parse:string.
	
			
	
	self assert: ( ((Element new)
			name: '__ROOT__';
			children: result;
			weight:0;
			yourself) allChildrenWeight) = 26.2.
	
