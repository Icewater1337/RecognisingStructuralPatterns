seas
sea
	^ 	( stmt not, any) star,
		stmt,
		((stmt/ eof) not, any) star