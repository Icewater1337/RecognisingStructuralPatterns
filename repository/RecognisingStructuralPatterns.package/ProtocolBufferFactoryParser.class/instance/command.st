accessing
command
	^ (CommandParserFactory new)
			key: ((NilParserFactory new generateParser), list2 optional) ==> [:e | 
				e first];
			arguments: list ;
			generateParser.