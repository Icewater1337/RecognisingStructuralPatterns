tests
testDefault
	parser := generator generateParser.
	
	self assert: parser parse: '.center .random {
	margin: auto;
	width: 60%;
	padding:10px;
	}'.
	self assert: result isKindOf: Element.
	self assert: result children first children size equals:3.
	self assert: result children first children first name equals:'margin'.
	self assert: result children first children second name equals:'width'.
	self assert: result children first children third name equals:'padding'.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).
	self assert: (result children first children allSatisfy: 		[:e | e isKindOf: Element]).
	self assert: result name equals:'.center .random'.