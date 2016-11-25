as yet unclassified
testJsonLikeEnumSea
	|string|
	string:= '{
 	   "glossary": {
  	      "title": "example glossary",
		 	 123 ;  WillNotUNderstandThis,
		  	 "fine" :"again"				
    	}
	}'.

	self assertEnumeration: #list anyParses:string.
	