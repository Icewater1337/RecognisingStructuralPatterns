keywords
dotKeyword
	^((':' asParser/'>' asParser/ '=' asParser) negate star) flatten, ':' asParser, (#letter asParser star)flatten
