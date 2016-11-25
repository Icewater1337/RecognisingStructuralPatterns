seas
entrySea
	^ (entry not , string not , commentBlock not , any) star , 
		entry
		, ((entry / string / commentBlock / eof) not , any) star