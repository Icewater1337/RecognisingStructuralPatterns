as yet unclassified
testNestedTag
	generator element: (generator selfReference not, NilGenerator whatever ) /((generator selfReference)star).
	parser := generator generateParser.

	self assert: parser parse:'<start><mid>random</mid></start>'.
	self assert: result children size equals:1.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).
		self assert: parser parse:'<start>
		<mid>s</mid>
		<bmid>s</bmid>
	</start>'.
	self assert: result children size equals:2.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).
	self assert: parser parse:'<a><b><c>d</c></b><f>h</f></a>'.