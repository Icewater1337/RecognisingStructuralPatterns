as yet unclassified
identifier
	^ (self new)
		begin: #letter asParser and;
		end: (#word asParser / #letter asParser) not;
		escape: PPFailingParser new;
		generateParser