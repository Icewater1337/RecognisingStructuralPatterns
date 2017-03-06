tests
testJsonLikeEnumSea
	|string|
	string:= '{
 	   "glossary": {
  	      "title": "example glossary",
		 	 123.WillNotUNderstandThis,
		  	 "fine" :"again"				
    	}
	}'.

	self assertEnumeration: #outerList anyParses:string.
	