accessing
dotKeyword
	^((':' asParser/end/ '=' asParser) negate star) flatten, ':' asParser, (#letter asParser star)flatten
