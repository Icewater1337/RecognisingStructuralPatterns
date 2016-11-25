seas
commentSea
	^ 	(comment not, any) star,
		comment,
		((comment / eof) not, any) star
