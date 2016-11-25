seas
commentSea
	^ (commentBlock not , string not , entry not , any) star , commentBlock
		, ((commentBlock / entry / string / eof) not , any) star