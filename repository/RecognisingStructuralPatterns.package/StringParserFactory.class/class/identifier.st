accessing
identifier
	^ (self new)
		begin: (#letter asParser / $_ asParser / $- asParser ) and trim;
		end: (#word asParser / $_ asParser / $- asParser) not trim;
		escape: PPFailingParser new;
		generateParser