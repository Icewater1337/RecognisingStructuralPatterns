tests
testMultiStart
	
	self assertEnumeration: #stringOrTag anyParses:'<a>b</a>
<single line tag/>
<? hehe ?>'.
	self assertEnumeration: #stringOrTag anyParses: '<? hehe ?>'.
	self assertEnumeration: #stringOrTag anyParses: '<single line tag/>'.
	
