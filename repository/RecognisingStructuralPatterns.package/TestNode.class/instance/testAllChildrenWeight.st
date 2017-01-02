tests
testAllChildrenWeight
	|string parser result|
	string:= '<a>
		<b>c</b>
	</a>'.
	
	parser:= BruteForceTagOfTagsGenerator getParsers: string.
	
	result:= (parser at:1) parse:string.
	
			
	
	self assert: result allChildrenWeight = 26.2.
	
