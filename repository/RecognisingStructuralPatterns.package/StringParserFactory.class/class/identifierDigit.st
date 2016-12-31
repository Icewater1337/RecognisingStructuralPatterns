as yet unclassified
identifierDigit
	^ (self new)
		begin: (#digit asParser / $- asParser / $+ asParser) and trim;
		end: (#word asParser / #letter asParser / $- asParser / $+ asParser /$. asParser) not trim;
		escape: PPFailingParser new;
		generateParser