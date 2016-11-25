as yet unclassified
identifierDigit
	^ (self new)
		begin: (#digit asParser / $- asParser / $+ asParser) and;
		end: (#word asParser / #letter asParser / $- asParser / $+ asParser  ) not;
		escape: PPFailingParser new;
		generateParser