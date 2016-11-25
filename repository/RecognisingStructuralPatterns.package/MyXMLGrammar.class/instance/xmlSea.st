sea
xmlSea
	"^ 	(xmlStmt1 not, any) star,
		xmlStmt1,
		((xmlStmt1 / eof) not, any) star"
	^ openFileTag optional, xmlElement
		