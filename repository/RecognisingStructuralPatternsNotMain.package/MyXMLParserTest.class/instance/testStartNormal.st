as yet unclassified
testStartNormal
	self parse:'<a> 
	<b> s </b>
 </a>'.
	self assert: result children first name ='a'.
	self assert: result  
	children first children first name ='b'.
	self assert: (result children first children first children first isKindOf: RawText).