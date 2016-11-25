seas
entrySea
	^ (entry not , string not , comment not , any) star , entry
		, ((entry / string / comment / eof) not , any) star