as yet unclassified
openFileTag
	^(StringGenerator new)
		begin:'<?' asParser token;
		end:'?>' asParser;
		generateParser