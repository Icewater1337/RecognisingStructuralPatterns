as yet unclassified
identifier
	^ (self new)
		begin: (#letter asParser / $_ asParser / $- asParser) and;
		end: (#word asParser / $_ asParser / $- asParser) not;
		escape: PPFailingParser new;
		generateParser