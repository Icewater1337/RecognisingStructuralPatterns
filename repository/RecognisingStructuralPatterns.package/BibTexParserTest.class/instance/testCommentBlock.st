as yet unclassified
testCommentBlock
	self
		fail:
			'@Comment{random
random
asjhasdf@
asjkdfh}'
			rule: #commentBlock;
		parse:
			'@Comment{random
random
asjhasdf
asjkdfh}'
			rule: #commentBlock