as yet unclassified
testStartComment
	self parse:'<a> 
	<!-- this is a valid comment - -->
	<b> s </b>
 </a>'.
	self assert: result children first name ='a'.
	self assert: (result children first children first isKindOf: Comment).
	self assert: result children first children second name ='b'.
	self assert: (result children first children second children first isKindOf: RawText).