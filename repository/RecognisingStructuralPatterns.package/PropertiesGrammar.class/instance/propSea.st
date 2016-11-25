sea
propSea
	^ 	(keywordValuePair not, any) star,
		keywordValuePair,
		((keywordValuePair / eof) not, any) star
	"^ ( keywordValuePair negate)star, keywordValuePair, propSea star"