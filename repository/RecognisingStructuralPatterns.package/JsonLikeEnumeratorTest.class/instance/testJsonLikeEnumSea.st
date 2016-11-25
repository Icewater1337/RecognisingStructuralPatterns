as yet unclassified
testJsonLikeEnumSea
|string|
string:= '{
    "glossary": {
        "title": "example glossary",
		  "ID" ;  WillNotUNderstandThis,
		   "fine" :"again"				
    }
}'.

self assertEnumeration: #list anyParses:string.
