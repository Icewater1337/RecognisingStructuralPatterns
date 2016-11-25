seas
entrySea
	^ 	(entry not, string not, any) star,
		entry,
		((entry / string/ eof) not, any) star
