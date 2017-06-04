accessing
command
	^ (CommandParserFactory new)
			key: ((NegateParserFactory new)
						negateChar:${ asParser/ $; asParser / $} asParser;
						generateParser);
			
			
			"((NilParserFactory new generateParser), (list2, 'and' asParser trim optional) optional) ==> [:e | 
				e first];"
			arguments: list ;
			generateParser.