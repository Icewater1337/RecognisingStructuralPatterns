as yet unclassified
testNestedXmlElement
	self parse:'<a>
		<b>
			c
		</b>
	</a>' rule:#xmlElement.
	self assert: (result isKindOf: Element).
	self assert: (result children size =1).
	self assert: (result children first children first isKindOf:RawText).
	self assert: result children first children first contents equals:'c'.
	self parse:'<a>
	<b>c</b>
	<c><g>j</g></c>
	</a>' rule:#xmlElement.
	self assert:(result children size =2).
	self assert: result children first children first contents equals:'c'.