as yet unclassified
testStartEmptyElement
	self parse:'<a> 
	<c/>
	<b> s </b>
	<d/>
 </a>'.
	self assert: result children first name ='a'.
	self assert: result children first children second name ='b'.
	self assert: result children first children first name='c'.
	self assert: result children first children third name='d'.
	self assert: (result children first children second children first isKindOf: RawText) .