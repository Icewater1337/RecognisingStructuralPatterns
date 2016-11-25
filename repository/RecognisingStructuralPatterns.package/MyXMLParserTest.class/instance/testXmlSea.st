as yet unclassified
testXMLSea
	self parse:'<a> 
 </a>'.
	self assert: result children first name ='a'.
	self parse:'<?xml version="1.0" encoding="ISO-8859-1" ?>
	<a></a>'.
	self assert: result children first name='an OpenFileTag'.