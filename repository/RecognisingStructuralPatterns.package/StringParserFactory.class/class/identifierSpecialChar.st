as yet unclassified
identifierSpecialChar
	^ (self new)
		begin: #word asParser negate;
		end: (#word asParser / #letter asParser) not;
		escape: PPFailingParser new;
		generateParser