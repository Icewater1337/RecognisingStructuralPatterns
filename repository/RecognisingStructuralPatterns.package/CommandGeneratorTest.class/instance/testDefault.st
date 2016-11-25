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
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).
	self assert: (result children first children allSatisfy: 		[:e | e isKindOf: Element]).
	self assert: result name equals:'.center .random'.