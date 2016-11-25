seas
stringSea
	^ (string not , entry not , comment not , any) star , string
		, ((string / entry / comment / eof) not , any) star