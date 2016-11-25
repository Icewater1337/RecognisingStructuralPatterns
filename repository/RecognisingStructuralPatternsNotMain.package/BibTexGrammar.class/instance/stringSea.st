seas
stringSea
	^ (string not , entry not , commentBlock not , any) star , string
		, ((string / entry / commentBlock / eof) not , any) star