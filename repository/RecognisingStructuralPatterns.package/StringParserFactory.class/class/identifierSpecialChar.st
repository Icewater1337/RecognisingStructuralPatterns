as yet unclassified
identifierSpecialChar
	^ (self new)
		begin: #word asParser negate trim;
		end: (#word asParser / #letter asParser) not trim;
		escape: PPFailingParser new;
		generateParser