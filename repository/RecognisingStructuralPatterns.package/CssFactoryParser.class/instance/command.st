accessing
command
	^ (CommandParserFactory new)
			key: ((NilParserFactory new generateParser), (list2, 'and' asParser trim optional) optional) ==> [:e | 
				e first];
			arguments: list ;
			generateParser.