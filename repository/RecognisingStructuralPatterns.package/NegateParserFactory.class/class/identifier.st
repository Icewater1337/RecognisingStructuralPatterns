accessing
identifier
	^ (self new)
		begins: (#letter asParser / $_ asParser / $- asParser / $! asParser) and trim;
		end: (#word asParser / $_ asParser / $- asParser / $! asParser) not trim;
		escape: PPFailingParser new;
		generateParser