accessing
command
	^ (CommandParserFactory new)
			key: ((${ asParser/ $; asParser / $} asParser)negate star flatten )trim ==> [ :e |
		(RawText new)
			contents: e trim;
			yourself];
			
			
			"((NilParserFactory new generateParser), (list2, 'and' asParser trim optional) optional) ==> [:e | 
				e first];"
			arguments: list ;
			generateParser.