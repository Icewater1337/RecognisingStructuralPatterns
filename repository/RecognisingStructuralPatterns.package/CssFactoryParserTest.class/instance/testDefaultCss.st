as yet unclassified
testDefaultCss
	self parse: '.center .random {
		margin: 5;
		stuff: asbn;
		haha: 542;
	}'.
	self assert: (result isKindOf:Node).
	self assert: result name equals:'.center .random'.
	self assert: result children first children first name equals:'margin'.
	self assert: result children first children second name equals:'stuff'.
	self assert: result children first children third name equals:'haha'.
