keywords
noDotKeyword
	^(#word asParser plus) flatten
	
	"^(('<' asParser negate star) /('>' asParser negate star) / ('/>' asParser negate star))flatten"
	
	
	"((':' asParser/'>' asParser) negate star, (':' asParser / #letter asParser), #letter asParser star )"