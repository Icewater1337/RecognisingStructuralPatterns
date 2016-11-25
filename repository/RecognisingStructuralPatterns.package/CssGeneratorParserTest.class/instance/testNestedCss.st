as yet unclassified
testNestedCss
	self parse: '.center .random {
		#columns { 
		 -stuff:5;
		 -stuff2: 6; }
	}'.
	
	self assert: result children first children first children first name equals:'#columns'.
	self assert: result children first children first children first children first children first name 	equals:'-stuff'.
	self assert: result children first children first children first children first children first children first 	contents equals:'5'.
	self assert: result children first children first children first children first children second name 	equals:'-stuff2'.
	self assert: result children first children first children first children first children second children first 	contents equals:'6'.