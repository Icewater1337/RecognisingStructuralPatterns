seas
commentSea
	^ (comment not , string not , entry not , any) star , comment
		, ((comment / entry / string / eof) not , any) star