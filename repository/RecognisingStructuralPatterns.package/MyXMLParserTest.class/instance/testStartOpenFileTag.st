as yet unclassified
testStartOpenFileTag
	self parse:'<?xml version="1.0" encoding="ISO-8859-1" ?>
	<a> 
		<!-- this is a valid comment - -->
		<b> s </b>
 	</a>'.
	self assert: (result children first isKindOf: Element).
	self assert: result children second name ='a'.
	self assert: result children second children first name ='a Comment'.
	self assert: result children second children second name ='b'.
	self assert: (result children second children second children first isKindOf:RawText) .