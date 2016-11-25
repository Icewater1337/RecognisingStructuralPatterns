as yet unclassified
testRepeatingElement
	self parse:'<a>
		<b>	f</b>
		<c>f</c>
	</a>' rule:#xmlElement.
	self assert: result children size equals:2.
	self assert: result children first name equals:'b'.
	self assert: result children second name equals:'c'.